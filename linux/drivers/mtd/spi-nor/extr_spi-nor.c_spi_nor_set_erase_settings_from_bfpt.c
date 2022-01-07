
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor_erase_type {int idx; } ;


 int spi_nor_set_erase_type (struct spi_nor_erase_type*,int ,int ) ;

__attribute__((used)) static void
spi_nor_set_erase_settings_from_bfpt(struct spi_nor_erase_type *erase,
         u32 size, u8 opcode, u8 i)
{
 erase->idx = i;
 spi_nor_set_erase_type(erase, size, opcode);
}
