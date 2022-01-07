
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct spi_nor_erase_type {int size_mask; int size_shift; } ;



__attribute__((used)) static u64 spi_nor_div_by_erase_size(const struct spi_nor_erase_type *erase,
         u64 dividend, u32 *remainder)
{

 *remainder = (u32)dividend & erase->size_mask;
 return dividend >> erase->size_shift;
}
