
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int mtd; } ;
struct spi_mem {int dummy; } ;


 int mtd_device_unregister (int *) ;
 struct spi_nor* spi_mem_get_drvdata (struct spi_mem*) ;
 int spi_nor_restore (struct spi_nor*) ;

__attribute__((used)) static int spi_nor_remove(struct spi_mem *spimem)
{
 struct spi_nor *nor = spi_mem_get_drvdata(spimem);

 spi_nor_restore(nor);


 return mtd_device_unregister(&nor->mtd);
}
