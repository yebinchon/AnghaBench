
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; int* tcam; int* sram; } ;
struct mvpp2 {int dummy; } ;


 int EINVAL ;
 int MVPP2_PRS_SRAM_DATA_REG (int) ;
 int MVPP2_PRS_SRAM_IDX_REG ;
 int MVPP2_PRS_SRAM_WORDS ;
 int MVPP2_PRS_TCAM_DATA_REG (int) ;
 int MVPP2_PRS_TCAM_IDX_REG ;
 int MVPP2_PRS_TCAM_INV_MASK ;
 size_t MVPP2_PRS_TCAM_INV_WORD ;
 int MVPP2_PRS_TCAM_SRAM_SIZE ;
 int MVPP2_PRS_TCAM_WORDS ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static int mvpp2_prs_hw_write(struct mvpp2 *priv, struct mvpp2_prs_entry *pe)
{
 int i;

 if (pe->index > MVPP2_PRS_TCAM_SRAM_SIZE - 1)
  return -EINVAL;


 pe->tcam[MVPP2_PRS_TCAM_INV_WORD] &= ~MVPP2_PRS_TCAM_INV_MASK;


 mvpp2_write(priv, MVPP2_PRS_TCAM_IDX_REG, pe->index);
 for (i = 0; i < MVPP2_PRS_TCAM_WORDS; i++)
  mvpp2_write(priv, MVPP2_PRS_TCAM_DATA_REG(i), pe->tcam[i]);


 mvpp2_write(priv, MVPP2_PRS_SRAM_IDX_REG, pe->index);
 for (i = 0; i < MVPP2_PRS_SRAM_WORDS; i++)
  mvpp2_write(priv, MVPP2_PRS_SRAM_DATA_REG(i), pe->sram[i]);

 return 0;
}
