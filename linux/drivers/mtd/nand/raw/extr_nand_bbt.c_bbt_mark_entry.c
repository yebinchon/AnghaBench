
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int* bbt; } ;


 int BBT_ENTRY_MASK ;
 int BBT_ENTRY_SHIFT ;

__attribute__((used)) static inline void bbt_mark_entry(struct nand_chip *chip, int block,
  uint8_t mark)
{
 uint8_t msk = (mark & BBT_ENTRY_MASK) << ((block & BBT_ENTRY_MASK) * 2);
 chip->bbt[block >> BBT_ENTRY_SHIFT] |= msk;
}
