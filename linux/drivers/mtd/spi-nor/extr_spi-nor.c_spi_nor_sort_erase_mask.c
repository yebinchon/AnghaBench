
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor_erase_type {int idx; scalar_t__ size; } ;
struct spi_nor_erase_map {struct spi_nor_erase_type* erase_type; } ;


 int BIT (int) ;
 int SNOR_ERASE_TYPE_MAX ;

__attribute__((used)) static u8 spi_nor_sort_erase_mask(struct spi_nor_erase_map *map, u8 erase_mask)
{
 struct spi_nor_erase_type *erase_type = map->erase_type;
 int i;
 u8 sorted_erase_mask = 0;

 if (!erase_mask)
  return 0;


 for (i = 0; i < SNOR_ERASE_TYPE_MAX; i++)
  if (erase_type[i].size && erase_mask & BIT(erase_type[i].idx))
   sorted_erase_mask |= BIT(i);

 return sorted_erase_mask;
}
