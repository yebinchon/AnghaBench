
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int* bouncebuf; int dev; } ;


 int XSR_RDY ;
 int dev_err (int ,char*,int) ;
 int spi_nor_xread_sr (struct spi_nor*,int*) ;

__attribute__((used)) static int s3an_sr_ready(struct spi_nor *nor)
{
 int ret;

 ret = spi_nor_xread_sr(nor, nor->bouncebuf);
 if (ret < 0) {
  dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
  return ret;
 }

 return !!(nor->bouncebuf[0] & XSR_RDY);
}
