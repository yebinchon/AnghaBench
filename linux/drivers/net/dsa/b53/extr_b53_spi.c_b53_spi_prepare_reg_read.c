
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int B53_SPI_CMD_RACK ;
 int B53_SPI_STATUS ;
 int EIO ;
 int b53_spi_read_reg (struct spi_device*,int,int*,int) ;
 int mdelay (int) ;

__attribute__((used)) static int b53_spi_prepare_reg_read(struct spi_device *spi, u8 reg)
{
 u8 rxbuf;
 int retry_count;
 int ret;

 ret = b53_spi_read_reg(spi, reg, &rxbuf, 1);
 if (ret)
  return ret;

 for (retry_count = 0; retry_count < 10; retry_count++) {
  ret = b53_spi_read_reg(spi, B53_SPI_STATUS, &rxbuf, 1);
  if (ret)
   return ret;

  if (rxbuf & B53_SPI_CMD_RACK)
   break;

  mdelay(1);
 }

 if (retry_count == 10)
  return -EIO;

 return 0;
}
