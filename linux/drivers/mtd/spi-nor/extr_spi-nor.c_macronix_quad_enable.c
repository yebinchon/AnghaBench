
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dev; } ;


 int EINVAL ;
 int SR_QUAD_EN_MX ;
 int dev_err (int ,char*) ;
 int read_sr (struct spi_nor*) ;
 int spi_nor_wait_till_ready (struct spi_nor*) ;
 int write_enable (struct spi_nor*) ;
 int write_sr (struct spi_nor*,int) ;

__attribute__((used)) static int macronix_quad_enable(struct spi_nor *nor)
{
 int ret, val;

 val = read_sr(nor);
 if (val < 0)
  return val;
 if (val & SR_QUAD_EN_MX)
  return 0;

 write_enable(nor);

 write_sr(nor, val | SR_QUAD_EN_MX);

 ret = spi_nor_wait_till_ready(nor);
 if (ret)
  return ret;

 ret = read_sr(nor);
 if (!(ret > 0 && (ret & SR_QUAD_EN_MX))) {
  dev_err(nor->dev, "Macronix Quad bit not set\n");
  return -EINVAL;
 }

 return 0;
}
