
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_prs_entry {int* sram; } ;


 int MVPP2_BIT_IN_WORD (int) ;
 size_t MVPP2_BIT_TO_WORD (int) ;

__attribute__((used)) static void mvpp2_prs_sram_bits_clear(struct mvpp2_prs_entry *pe, int bit_num,
          u32 val)
{
 pe->sram[MVPP2_BIT_TO_WORD(bit_num)] &= ~(val << (MVPP2_BIT_IN_WORD(bit_num)));
}
