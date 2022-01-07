
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct spi_nor_erase_type {scalar_t__ size; int opcode; } ;
struct spi_nor_erase_map {struct spi_nor_erase_type* erase_type; } ;
struct mtd_info {scalar_t__ erasesize; } ;
struct TYPE_3__ {struct spi_nor_erase_map erase_map; } ;
struct spi_nor {int erase_opcode; TYPE_2__* info; struct mtd_info mtd; TYPE_1__ params; } ;
struct TYPE_4__ {unsigned int sector_size; } ;


 int EINVAL ;
 int SNOR_ERASE_TYPE_MAX ;
 scalar_t__ spi_nor_has_uniform_erase (struct spi_nor*) ;
 struct spi_nor_erase_type* spi_nor_select_uniform_erase (struct spi_nor_erase_map*,unsigned int) ;

__attribute__((used)) static int spi_nor_select_erase(struct spi_nor *nor)
{
 struct spi_nor_erase_map *map = &nor->params.erase_map;
 const struct spi_nor_erase_type *erase = ((void*)0);
 struct mtd_info *mtd = &nor->mtd;
 u32 wanted_size = nor->info->sector_size;
 int i;
 if (spi_nor_has_uniform_erase(nor)) {
  erase = spi_nor_select_uniform_erase(map, wanted_size);
  if (!erase)
   return -EINVAL;
  nor->erase_opcode = erase->opcode;
  mtd->erasesize = erase->size;
  return 0;
 }





 for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
  if (map->erase_type[i].size) {
   erase = &map->erase_type[i];
   break;
  }
 }

 if (!erase)
  return -EINVAL;

 mtd->erasesize = erase->size;
 return 0;
}
