
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int MVPP2_PE_DSA_DEFAULT ;
 int MVPP2_PRS_DSA ;
 int MVPP2_PRS_EDSA ;
 int MVPP2_PRS_LU_DSA ;
 int MVPP2_PRS_LU_MAC ;
 int MVPP2_PRS_LU_VLAN ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_TAGGED ;
 int MVPP2_PRS_UNTAGGED ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_dsa_tag_ethertype_set (struct mvpp2*,int ,int,int ,int ) ;
 int mvpp2_prs_dsa_tag_set (struct mvpp2*,int ,int,int ,int ) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static void mvpp2_prs_dsa_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;


 mvpp2_prs_dsa_tag_set(priv, 0, 0, MVPP2_PRS_UNTAGGED,
         MVPP2_PRS_EDSA);


 mvpp2_prs_dsa_tag_set(priv, 0, 0, MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);


 mvpp2_prs_dsa_tag_set(priv, 0, 0, MVPP2_PRS_UNTAGGED,
         MVPP2_PRS_DSA);


 mvpp2_prs_dsa_tag_set(priv, 0, 0, MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);


 mvpp2_prs_dsa_tag_ethertype_set(priv, 0, 0,
     MVPP2_PRS_UNTAGGED, MVPP2_PRS_EDSA);


 mvpp2_prs_dsa_tag_ethertype_set(priv, 0, 0,
     MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);


 mvpp2_prs_dsa_tag_ethertype_set(priv, 0, 1,
     MVPP2_PRS_UNTAGGED, MVPP2_PRS_DSA);


 mvpp2_prs_dsa_tag_ethertype_set(priv, 0, 1,
     MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);


 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_DSA);
 pe.index = MVPP2_PE_DSA_DEFAULT;
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_VLAN);


 mvpp2_prs_sram_shift_set(&pe, 0, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_MAC);


 mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);

 mvpp2_prs_hw_write(priv, &pe);
}
