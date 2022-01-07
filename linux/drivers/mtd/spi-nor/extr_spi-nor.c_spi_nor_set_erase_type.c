
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor_erase_type {int size_shift; int size_mask; int size; int opcode; } ;


 int ffs (int ) ;

__attribute__((used)) static void spi_nor_set_erase_type(struct spi_nor_erase_type *erase,
       u32 size, u8 opcode)
{
 erase->size = size;
 erase->opcode = opcode;

 erase->size_shift = ffs(erase->size) - 1;
 erase->size_mask = (1 << erase->size_shift) - 1;
}
