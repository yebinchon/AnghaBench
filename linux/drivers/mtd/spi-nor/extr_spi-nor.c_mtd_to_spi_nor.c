
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dummy; } ;
struct mtd_info {struct spi_nor* priv; } ;



__attribute__((used)) static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
{
 return mtd->priv;
}
