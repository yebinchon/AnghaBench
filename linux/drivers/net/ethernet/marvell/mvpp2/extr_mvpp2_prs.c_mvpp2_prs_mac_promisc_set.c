
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
typedef enum mvpp2_prs_l2_cast { ____Placeholder_mvpp2_prs_l2_cast } mvpp2_prs_l2_cast ;
struct TYPE_2__ {scalar_t__ valid; } ;


 int ETH_ALEN ;
 int MVPP2_PE_MAC_MC_PROMISCUOUS ;
 int MVPP2_PE_MAC_UC_PROMISCUOUS ;
 int MVPP2_PRS_CAST_MASK ;
 int MVPP2_PRS_L2_UNI_CAST ;
 int MVPP2_PRS_LU_DSA ;
 int MVPP2_PRS_LU_MAC ;
 unsigned char MVPP2_PRS_MCAST_VAL ;
 int MVPP2_PRS_RI_L2_CAST_MASK ;
 unsigned int MVPP2_PRS_RI_L2_MCAST ;
 unsigned int MVPP2_PRS_RI_L2_UCAST ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 unsigned char MVPP2_PRS_UCAST_VAL ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,unsigned int,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int ,unsigned char,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_set (struct mvpp2_prs_entry*,int,int) ;

void mvpp2_prs_mac_promisc_set(struct mvpp2 *priv, int port,
          enum mvpp2_prs_l2_cast l2_cast, bool add)
{
 struct mvpp2_prs_entry pe;
 unsigned char cast_match;
 unsigned int ri;
 int tid;

 if (l2_cast == MVPP2_PRS_L2_UNI_CAST) {
  cast_match = MVPP2_PRS_UCAST_VAL;
  tid = MVPP2_PE_MAC_UC_PROMISCUOUS;
  ri = MVPP2_PRS_RI_L2_UCAST;
 } else {
  cast_match = MVPP2_PRS_MCAST_VAL;
  tid = MVPP2_PE_MAC_MC_PROMISCUOUS;
  ri = MVPP2_PRS_RI_L2_MCAST;
 }


 if (priv->prs_shadow[tid].valid) {
  mvpp2_prs_init_from_hw(priv, &pe, tid);
 } else {
  memset(&pe, 0, sizeof(pe));
  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_MAC);
  pe.index = tid;


  mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_DSA);


  mvpp2_prs_sram_ri_update(&pe, ri, MVPP2_PRS_RI_L2_CAST_MASK);


  mvpp2_prs_tcam_data_byte_set(&pe, 0, cast_match,
          MVPP2_PRS_CAST_MASK);


  mvpp2_prs_sram_shift_set(&pe, 2 * ETH_ALEN,
      MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


  mvpp2_prs_tcam_port_map_set(&pe, 0);


  mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_MAC);
 }


 mvpp2_prs_tcam_port_set(&pe, port, add);

 mvpp2_prs_hw_write(priv, &pe);
}
