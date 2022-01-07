
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {scalar_t__ lu; int valid; } ;


 int ENOENT ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 unsigned int MVPP2_PRS_DBL_VLAN_AI_BIT ;
 scalar_t__ MVPP2_PRS_LU_VLAN ;
 unsigned int MVPP2_PRS_RI_VLAN_MASK ;
 unsigned int MVPP2_PRS_RI_VLAN_SINGLE ;
 unsigned int MVPP2_PRS_RI_VLAN_TRIPLE ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 unsigned int mvpp2_prs_sram_ri_get (struct mvpp2_prs_entry*) ;
 unsigned int mvpp2_prs_tcam_ai_get (struct mvpp2_prs_entry*) ;
 int mvpp2_prs_tcam_data_cmp (struct mvpp2_prs_entry*,int ,unsigned short) ;

__attribute__((used)) static int mvpp2_prs_vlan_find(struct mvpp2 *priv, unsigned short tpid, int ai)
{
 struct mvpp2_prs_entry pe;
 int tid;


 for (tid = MVPP2_PE_FIRST_FREE_TID;
      tid <= MVPP2_PE_LAST_FREE_TID; tid++) {
  unsigned int ri_bits, ai_bits;
  bool match;

  if (!priv->prs_shadow[tid].valid ||
      priv->prs_shadow[tid].lu != MVPP2_PRS_LU_VLAN)
   continue;

  mvpp2_prs_init_from_hw(priv, &pe, tid);
  match = mvpp2_prs_tcam_data_cmp(&pe, 0, tpid);
  if (!match)
   continue;


  ri_bits = mvpp2_prs_sram_ri_get(&pe);
  ri_bits &= MVPP2_PRS_RI_VLAN_MASK;


  ai_bits = mvpp2_prs_tcam_ai_get(&pe);

  ai_bits &= ~MVPP2_PRS_DBL_VLAN_AI_BIT;

  if (ai != ai_bits)
   continue;

  if (ri_bits == MVPP2_PRS_RI_VLAN_SINGLE ||
      ri_bits == MVPP2_PRS_RI_VLAN_TRIPLE)
   return tid;
 }

 return -ENOENT;
}
