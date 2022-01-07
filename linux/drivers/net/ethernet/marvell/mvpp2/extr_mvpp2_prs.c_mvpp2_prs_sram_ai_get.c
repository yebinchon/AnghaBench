
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvpp2_prs_entry {int* sram; } ;


 int MVPP2_BIT_IN_WORD (int ) ;
 int MVPP2_BIT_TO_WORD (int ) ;
 int MVPP2_PRS_SRAM_AI_OFFS ;

__attribute__((used)) static int mvpp2_prs_sram_ai_get(struct mvpp2_prs_entry *pe)
{
 u8 bits;

 int ai_off = MVPP2_BIT_TO_WORD(MVPP2_PRS_SRAM_AI_OFFS);
 int ai_shift = MVPP2_BIT_IN_WORD(MVPP2_PRS_SRAM_AI_OFFS);

 bits = (pe->sram[ai_off] >> ai_shift) |
        (pe->sram[ai_off + 1] << (32 - ai_shift));

 return bits;
}
