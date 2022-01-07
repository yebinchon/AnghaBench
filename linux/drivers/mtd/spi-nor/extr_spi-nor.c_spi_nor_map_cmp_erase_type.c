
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_erase_type {int size; } ;



__attribute__((used)) static int spi_nor_map_cmp_erase_type(const void *l, const void *r)
{
 const struct spi_nor_erase_type *left = l, *right = r;

 return left->size - right->size;
}
