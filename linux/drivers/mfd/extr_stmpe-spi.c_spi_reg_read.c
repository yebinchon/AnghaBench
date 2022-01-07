
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {struct spi_device* client; } ;
struct spi_device {int dummy; } ;


 int READ_CMD ;
 int spi_w8r16 (struct spi_device*,int) ;

__attribute__((used)) static int spi_reg_read(struct stmpe *stmpe, u8 reg)
{
 struct spi_device *spi = stmpe->client;
 int status = spi_w8r16(spi, reg | READ_CMD);

 return (status < 0) ? status : status >> 8;
}
