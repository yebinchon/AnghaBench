
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int* bouncebuf; int dev; } ;


 int CR_QUAD_EN_SPAN ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int read_sr (struct spi_nor*) ;
 int write_sr_cr (struct spi_nor*,int*) ;

__attribute__((used)) static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
{
 u8 *sr_cr = nor->bouncebuf;
 int ret;


 ret = read_sr(nor);
 if (ret < 0) {
  dev_err(nor->dev, "error while reading status register\n");
  return -EINVAL;
 }
 sr_cr[0] = ret;
 sr_cr[1] = CR_QUAD_EN_SPAN;

 return write_sr_cr(nor, sr_cr);
}
