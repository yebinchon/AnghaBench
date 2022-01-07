
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int MVPP2_PRS_SRAM_RI_CTRL_BITS ;
 scalar_t__ MVPP2_PRS_SRAM_RI_CTRL_OFFS ;
 scalar_t__ MVPP2_PRS_SRAM_RI_OFFS ;
 int mvpp2_prs_sram_bits_clear (struct mvpp2_prs_entry*,scalar_t__,int) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,scalar_t__,int) ;

__attribute__((used)) static void mvpp2_prs_sram_ri_update(struct mvpp2_prs_entry *pe,
         unsigned int bits, unsigned int mask)
{
 unsigned int i;

 for (i = 0; i < MVPP2_PRS_SRAM_RI_CTRL_BITS; i++) {
  if (!(mask & BIT(i)))
   continue;

  if (bits & BIT(i))
   mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_RI_OFFS + i,
      1);
  else
   mvpp2_prs_sram_bits_clear(pe,
        MVPP2_PRS_SRAM_RI_OFFS + i,
        1);

  mvpp2_prs_sram_bits_set(pe, MVPP2_PRS_SRAM_RI_CTRL_OFFS + i, 1);
 }
}
