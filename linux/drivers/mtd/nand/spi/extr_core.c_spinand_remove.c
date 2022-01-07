
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int dummy; } ;
struct spi_mem {int dummy; } ;
struct mtd_info {int dummy; } ;


 int mtd_device_unregister (struct mtd_info*) ;
 struct spinand_device* spi_mem_get_drvdata (struct spi_mem*) ;
 int spinand_cleanup (struct spinand_device*) ;
 struct mtd_info* spinand_to_mtd (struct spinand_device*) ;

__attribute__((used)) static int spinand_remove(struct spi_mem *mem)
{
 struct spinand_device *spinand;
 struct mtd_info *mtd;
 int ret;

 spinand = spi_mem_get_drvdata(mem);
 mtd = spinand_to_mtd(spinand);

 ret = mtd_device_unregister(mtd);
 if (ret)
  return ret;

 spinand_cleanup(spinand);

 return 0;
}
