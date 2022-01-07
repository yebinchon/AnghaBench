
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
struct TYPE_2__ {scalar_t__ lu; int valid; } ;


 int EINVAL ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 int MVPP2_PRS_DBL_VLAN_AI_BIT ;
 int MVPP2_PRS_LU_VID ;
 scalar_t__ MVPP2_PRS_LU_VLAN ;
 unsigned int MVPP2_PRS_RI_VLAN_DOUBLE ;
 unsigned int MVPP2_PRS_RI_VLAN_MASK ;
 int MVPP2_PRS_RI_VLAN_SINGLE ;
 int MVPP2_PRS_RI_VLAN_TRIPLE ;
 int MVPP2_PRS_SINGLE_VLAN_AI ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_match_etype (struct mvpp2_prs_entry*,int ,unsigned short) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,scalar_t__) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 unsigned int mvpp2_prs_sram_ri_get (struct mvpp2_prs_entry*) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,unsigned int) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int,int) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,scalar_t__) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,unsigned int) ;
 int mvpp2_prs_vlan_find (struct mvpp2*,unsigned short,int) ;

__attribute__((used)) static int mvpp2_prs_vlan_add(struct mvpp2 *priv, unsigned short tpid, int ai,
         unsigned int port_map)
{
 struct mvpp2_prs_entry pe;
 int tid_aux, tid;
 int ret = 0;

 memset(&pe, 0, sizeof(pe));

 tid = mvpp2_prs_vlan_find(priv, tpid, ai);

 if (tid < 0) {

  tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_LAST_FREE_TID,
      MVPP2_PE_FIRST_FREE_TID);
  if (tid < 0)
   return tid;


  for (tid_aux = MVPP2_PE_LAST_FREE_TID;
       tid_aux >= MVPP2_PE_FIRST_FREE_TID; tid_aux--) {
   unsigned int ri_bits;

   if (!priv->prs_shadow[tid_aux].valid ||
       priv->prs_shadow[tid_aux].lu != MVPP2_PRS_LU_VLAN)
    continue;

   mvpp2_prs_init_from_hw(priv, &pe, tid_aux);
   ri_bits = mvpp2_prs_sram_ri_get(&pe);
   if ((ri_bits & MVPP2_PRS_RI_VLAN_MASK) ==
       MVPP2_PRS_RI_VLAN_DOUBLE)
    break;
  }

  if (tid <= tid_aux)
   return -EINVAL;

  memset(&pe, 0, sizeof(pe));
  pe.index = tid;
  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_VLAN);

  mvpp2_prs_match_etype(&pe, 0, tpid);


  mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_VID);


  mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

  if (ai == MVPP2_PRS_SINGLE_VLAN_AI) {
   mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_VLAN_SINGLE,
       MVPP2_PRS_RI_VLAN_MASK);
  } else {
   ai |= MVPP2_PRS_DBL_VLAN_AI_BIT;
   mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_VLAN_TRIPLE,
       MVPP2_PRS_RI_VLAN_MASK);
  }
  mvpp2_prs_tcam_ai_update(&pe, ai, MVPP2_PRS_SRAM_AI_MASK);

  mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_VLAN);
 } else {
  mvpp2_prs_init_from_hw(priv, &pe, tid);
 }

 mvpp2_prs_tcam_port_map_set(&pe, port_map);

 mvpp2_prs_hw_write(priv, &pe);

 return ret;
}
