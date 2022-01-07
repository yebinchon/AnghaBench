
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int* bouncebuf; int dev; } ;


 int CR_QUAD_EN_SPAN ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int read_cr (struct spi_nor*) ;
 int write_sr_cr (struct spi_nor*,int*) ;

__attribute__((used)) static int spansion_quad_enable(struct spi_nor *nor)
{
 u8 *sr_cr = nor->bouncebuf;
 int ret;

 sr_cr[0] = 0;
 sr_cr[1] = CR_QUAD_EN_SPAN;
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
