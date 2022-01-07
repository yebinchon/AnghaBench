
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_erase_region {int dummy; } ;


 scalar_t__ spi_nor_region_is_last (struct spi_nor_erase_region*) ;

__attribute__((used)) static struct spi_nor_erase_region *
spi_nor_region_next(struct spi_nor_erase_region *region)
{
 if (spi_nor_region_is_last(region))
  return ((void*)0);
 region++;
 return region;
}
