
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* sram; } ;


 size_t MVPP2_BIT_TO_WORD (int ) ;
 int MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS ;
 int MVPP2_PRS_SRAM_SHIFT_MASK ;
 int MVPP2_PRS_SRAM_SHIFT_OFFS ;
 int MVPP2_PRS_SRAM_SHIFT_SIGN_BIT ;
 int mvpp2_prs_sram_bits_clear (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,unsigned int) ;

__attribute__((used)) static void mvpp2_prs_sram_shift_set(struct mvpp2_prs_entry *pe, int shift,
         unsigned int op)
{

 if (shift < 0) {
  mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_SHIFT_SIGN_BIT, 1);
  shift = 0 - shift;
 } else {
  mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_SHIFT_SIGN_BIT, 1);
 }


 pe->sram[MVPP2_BIT_TO_WORD(MVPP2_PRS_SRAM_SHIFT_OFFS)] |=
  shift & MVPP2_PRS_SRAM_SHIFT_MASK;


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS,
      MVPP2_PRS_SRAM_OP_SEL_SHIFT_MASK);
 mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_OP_SEL_SHIFT_OFFS, op);


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS, 1);
}
