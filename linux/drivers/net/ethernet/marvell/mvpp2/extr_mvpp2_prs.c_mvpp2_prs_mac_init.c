
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int MVPP2_PE_MAC_NON_PROMISCUOUS ;
 int MVPP2_PRS_L2_MULTI_CAST ;
 int MVPP2_PRS_L2_UNI_CAST ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_MAC ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_DROP_MASK ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_mac_drop_all_set (struct mvpp2*,int ,int) ;
 int mvpp2_prs_mac_promisc_set (struct mvpp2*,int ,int ,int) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static void mvpp2_prs_mac_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;

 memset(&pe, 0, sizeof(pe));


 pe.index = MVPP2_PE_MAC_NON_PROMISCUOUS;
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_MAC);

 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_DROP_MASK,
     MVPP2_PRS_RI_DROP_MASK);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_MAC);
 mvpp2_prs_hw_write(priv, &pe);


 mvpp2_prs_mac_drop_all_set(priv, 0, 0);
 mvpp2_prs_mac_promisc_set(priv, 0, MVPP2_PRS_L2_UNI_CAST, 0);
 mvpp2_prs_mac_promisc_set(priv, 0, MVPP2_PRS_L2_MULTI_CAST, 0);
}
