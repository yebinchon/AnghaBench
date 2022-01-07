
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int* bouncebuf; struct device* dev; } ;
struct device {int dummy; } ;


 int CR_QUAD_EN_SPAN ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int read_cr (struct spi_nor*) ;
 int read_sr (struct spi_nor*) ;
 int write_sr_cr (struct spi_nor*,int*) ;

__attribute__((used)) static int spansion_read_cr_quad_enable(struct spi_nor *nor)
{
 struct device *dev = nor->dev;
 u8 *sr_cr = nor->bouncebuf;
 int ret;


 ret = read_cr(nor);
 if (ret < 0) {
  dev_err(dev, "error while reading configuration register\n");
  return -EINVAL;
 }

 if (ret & CR_QUAD_EN_SPAN)
  return 0;

 sr_cr[1] = ret | CR_QUAD_EN_SPAN;


 ret = read_sr(nor);
 if (ret < 0) {
  dev_err(dev, "error while reading status register\n");
  return -EINVAL;
 }
 sr_cr[0] = ret;

 ret = write_sr_cr(nor, sr_cr);
 if (ret)
  return ret;


 ret = read_cr(nor);
 if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
  dev_err(nor->dev, "Spansion Quad bit not set\n");
  return -EINVAL;
 }

 return 0;
}
