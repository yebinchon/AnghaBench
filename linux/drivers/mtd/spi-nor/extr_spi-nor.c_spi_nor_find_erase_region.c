
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct spi_nor_erase_region {scalar_t__ offset; scalar_t__ size; } ;
struct spi_nor_erase_map {struct spi_nor_erase_region* regions; } ;


 int EINVAL ;
 struct spi_nor_erase_region* ERR_PTR (int ) ;
 scalar_t__ SNOR_ERASE_FLAGS_MASK ;
 struct spi_nor_erase_region* spi_nor_region_next (struct spi_nor_erase_region*) ;

__attribute__((used)) static struct spi_nor_erase_region *
spi_nor_find_erase_region(const struct spi_nor_erase_map *map, u64 addr)
{
 struct spi_nor_erase_region *region = map->regions;
 u64 region_start = region->offset & ~SNOR_ERASE_FLAGS_MASK;
 u64 region_end = region_start + region->size;

 while (addr < region_start || addr >= region_end) {
  region = spi_nor_region_next(region);
  if (!region)
   return ERR_PTR(-EINVAL);

  region_start = region->offset & ~SNOR_ERASE_FLAGS_MASK;
  region_end = region_start + region->size;
 }

 return region;
}
