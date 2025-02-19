
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int dummy; } ;


 int MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS ;
 unsigned int MVPP2_PRS_SRAM_OP_SEL_UDF_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS ;
 int MVPP2_PRS_SRAM_UDF_MASK ;
 int MVPP2_PRS_SRAM_UDF_OFFS ;
 int MVPP2_PRS_SRAM_UDF_SIGN_BIT ;
 int MVPP2_PRS_SRAM_UDF_TYPE_MASK ;
 int MVPP2_PRS_SRAM_UDF_TYPE_OFFS ;
 int mvpp2_prs_sram_bits_clear (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,unsigned int) ;

__attribute__((used)) static void mvpp2_prs_sram_offset_set(struct mvpp2_prs_entry *pe,
          unsigned int type, int offset,
          unsigned int op)
{

 if (offset < 0) {
  mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_UDF_SIGN_BIT, 1);
  offset = 0 - offset;
 } else {
  mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_UDF_SIGN_BIT, 1);
 }


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_UDF_OFFS,
      MVPP2_PRS_SRAM_UDF_MASK);
 mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_UDF_OFFS,
    offset & MVPP2_PRS_SRAM_UDF_MASK);


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_UDF_TYPE_OFFS,
      MVPP2_PRS_SRAM_UDF_TYPE_MASK);
 mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_UDF_TYPE_OFFS, type);


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS,
      MVPP2_PRS_SRAM_OP_SEL_UDF_MASK);
 mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS,
    op & MVPP2_PRS_SRAM_OP_SEL_UDF_MASK);


 mvpp2_prs_sram_bits_clear(pe, MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS, 1);
}
