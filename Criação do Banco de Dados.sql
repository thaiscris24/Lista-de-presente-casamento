-- Criação do Banco de Dados
CREATE DATABASE ListaDeCasamento;
USE ListaDeCasamento;

-- Tabela de Usuários
CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
);

-- Tabela de Casais
CREATE TABLE Casais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_casal VARCHAR(255) NOT NULL,
    data_de_casamento DATE NOT NULL,
);

-- Tabela de Listas de Presentes
CREATE TABLE Listas_de_Presentes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    casal_id INT,
    nome_do_item VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    quantidade INT,
    status ENUM('disponível', 'comprado') DEFAULT 'disponível',
    FOREIGN KEY (casal_id) REFERENCES Casais(id) ON DELETE CASCADE
);

-- Tabela de Compradores
CREATE TABLE Compradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255),
);
