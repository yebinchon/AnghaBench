
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
struct TYPE_2__ {scalar_t__ valid; } ;


 int ETH_P_EDSA ;
 scalar_t__ MVPP2_ETH_TYPE_LEN ;
 int MVPP2_PE_ETYPE_DSA_TAGGED ;
 int MVPP2_PE_ETYPE_DSA_UNTAGGED ;
 int MVPP2_PE_ETYPE_EDSA_TAGGED ;
 int MVPP2_PE_ETYPE_EDSA_UNTAGGED ;
 int MVPP2_PRS_LU_DSA ;
 int MVPP2_PRS_LU_L2 ;
 int MVPP2_PRS_LU_VLAN ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_DSA_MASK ;
 int MVPP2_PRS_RI_VLAN_MASK ;
 int MVPP2_PRS_RI_VLAN_NONE ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_TCAM_DSA_TAGGED_BIT ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_match_etype (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,scalar_t__,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,scalar_t__,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_tcam_port_set (struct mvpp2_prs_entry*,int,int) ;

__attribute__((used)) static void mvpp2_prs_dsa_tag_ethertype_set(struct mvpp2 *priv, int port,
         bool add, bool tagged, bool extend)
{
 struct mvpp2_prs_entry pe;
 int tid, shift, port_mask;

 if (extend) {
  tid = tagged ? MVPP2_PE_ETYPE_EDSA_TAGGED :
        MVPP2_PE_ETYPE_EDSA_UNTAGGED;
  port_mask = 0;
  shift = 8;
 } else {
  tid = tagged ? MVPP2_PE_ETYPE_DSA_TAGGED :
        MVPP2_PE_ETYPE_DSA_UNTAGGED;
  port_mask = MVPP2_PRS_PORT_MASK;
  shift = 4;
 }

 if (priv->prs_shadow[tid].valid) {

  mvpp2_prs_init_from_hw(priv, &pe, tid);
 } else {

  memset(&pe, 0, sizeof(pe));
  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_DSA);
  pe.index = tid;


  mvpp2_prs_match_etype(&pe, 0, ETH_P_EDSA);
  mvpp2_prs_match_etype(&pe, 2, 0);

  mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_DSA_MASK,
      MVPP2_PRS_RI_DSA_MASK);

  mvpp2_prs_sram_shift_set(&pe, 2 + MVPP2_ETH_TYPE_LEN + shift,
      MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


  mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_DSA);

  if (tagged) {

   mvpp2_prs_tcam_data_byte_set(&pe,
           MVPP2_ETH_TYPE_LEN + 2 + 3,
       MVPP2_PRS_TCAM_DSA_TAGGED_BIT,
       MVPP2_PRS_TCAM_DSA_TAGGED_BIT);

   mvpp2_prs_sram_ai_update(&pe, 0,
       MVPP2_PRS_SRAM_AI_MASK);

   mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_VLAN);
  } else {

   mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_VLAN_NONE,
       MVPP2_PRS_RI_VLAN_MASK);
   mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_L2);
  }

  mvpp2_prs_tcam_port_map_set(&pe, port_mask);
 }


 mvpp2_prs_tcam_port_set(&pe, port, add);

 mvpp2_prs_hw_write(priv, &pe);
}
