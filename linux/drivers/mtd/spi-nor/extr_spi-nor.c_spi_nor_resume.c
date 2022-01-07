
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {struct device* dev; } ;
struct mtd_info {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 struct spi_nor* mtd_to_spi_nor (struct mtd_info*) ;
 int spi_nor_init (struct spi_nor*) ;

__attribute__((used)) static void spi_nor_resume(struct mtd_info *mtd)
{
 struct spi_nor *nor = mtd_to_spi_nor(mtd);
 struct device *dev = nor->dev;
 int ret;


 ret = spi_nor_init(nor);
 if (ret)
  dev_err(dev, "resume() failed\n");
}
