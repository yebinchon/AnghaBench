
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* sram; } ;


 size_t MVPP2_PRS_SRAM_RI_WORD ;

__attribute__((used)) static int mvpp2_prs_sram_ri_get(struct mvpp2_prs_entry *pe)
{
 return pe->sram[MVPP2_PRS_SRAM_RI_WORD];
}
