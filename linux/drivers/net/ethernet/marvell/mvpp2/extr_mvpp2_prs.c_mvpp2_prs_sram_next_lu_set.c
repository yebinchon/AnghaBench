
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int dummy; } ;


 int MVPP2_PRS_SRAM_NEXT_LU_MASK ;
 int MVPP2_PRS_SRAM_NEXT_LU_OFFS ;
 int mvpp2_prs_sram_bits_clear (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int,unsigned int) ;

__attribute__((used)) static void mvpp2_prs_sram_next_lu_set(struct mvpp2_prs_entry *pe,
           unsigned int lu)
{
 int sram_next_off = MVPP2_PRS_SRAM_NEXT_LU_OFFS;

 mvpp2_prs_sram_bits_clear(pe, sram_next_off,
      MVPP2_PRS_SRAM_NEXT_LU_MASK);
 mvpp2_prs_sram_bits_set(pe, sram_next_off, lu);
}
