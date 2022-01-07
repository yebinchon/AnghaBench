
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef struct spi_nor_erase_type {scalar_t__ const size; } const spi_nor_erase_type ;
struct spi_nor_erase_map {int uniform_erase_type; struct spi_nor_erase_type const* erase_type; } ;


 int BIT (int) ;
 int SNOR_ERASE_TYPE_MASK ;
 int SNOR_ERASE_TYPE_MAX ;

__attribute__((used)) static const struct spi_nor_erase_type *
spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
        const u32 wanted_size)
{
 const struct spi_nor_erase_type *tested_erase, *erase = ((void*)0);
 int i;
 u8 uniform_erase_type = map->uniform_erase_type;

 for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
  if (!(uniform_erase_type & BIT(i)))
   continue;

  tested_erase = &map->erase_type[i];





  if (tested_erase->size == wanted_size) {
   erase = tested_erase;
   break;
  }





  if (!erase && tested_erase->size)
   erase = tested_erase;

 }

 if (!erase)
  return ((void*)0);


 map->uniform_erase_type &= ~SNOR_ERASE_TYPE_MASK;
 map->uniform_erase_type |= BIT(erase - map->erase_type);
 return erase;
}
