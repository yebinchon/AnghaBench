
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {scalar_t__ lu; int valid; } ;


 int ENOENT ;
 int MVPP2_PRS_FLOW_ID_MASK ;
 scalar_t__ MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_TCAM_SRAM_SIZE ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_sram_ai_get (struct mvpp2_prs_entry*) ;

__attribute__((used)) static int mvpp2_prs_flow_find(struct mvpp2 *priv, int flow)
{
 struct mvpp2_prs_entry pe;
 int tid;


 for (tid = MVPP2_PRS_TCAM_SRAM_SIZE - 1; tid >= 0; tid--) {
  u8 bits;

  if (!priv->prs_shadow[tid].valid ||
      priv->prs_shadow[tid].lu != MVPP2_PRS_LU_FLOWS)
   continue;

  mvpp2_prs_init_from_hw(priv, &pe, tid);
  bits = mvpp2_prs_sram_ai_get(&pe);


  if ((bits & MVPP2_PRS_FLOW_ID_MASK) == flow)
   return tid;
 }

 return -ENOENT;
}
