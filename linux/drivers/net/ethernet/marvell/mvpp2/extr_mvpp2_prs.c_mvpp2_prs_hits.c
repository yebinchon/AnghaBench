
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int dummy; } ;


 int EINVAL ;
 int MVPP2_PRS_TCAM_HIT_CNT_MASK ;
 int MVPP2_PRS_TCAM_HIT_CNT_REG ;
 int MVPP2_PRS_TCAM_HIT_IDX_REG ;
 int MVPP2_PRS_TCAM_SRAM_SIZE ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

int mvpp2_prs_hits(struct mvpp2 *priv, int index)
{
 u32 val;

 if (index > MVPP2_PRS_TCAM_SRAM_SIZE)
  return -EINVAL;

 mvpp2_write(priv, MVPP2_PRS_TCAM_HIT_IDX_REG, index);

 val = mvpp2_read(priv, MVPP2_PRS_TCAM_HIT_CNT_REG);

 val &= MVPP2_PRS_TCAM_HIT_CNT_MASK;

 return val;
}
