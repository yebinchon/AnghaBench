
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int MVPP2_PE_VID_EDSA_FLTR_DEFAULT ;
 int MVPP2_PE_VID_FLTR_DEFAULT ;
 int MVPP2_PRS_EDSA_VID_AI_BIT ;
 int MVPP2_PRS_LU_L2 ;
 int MVPP2_PRS_LU_VID ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_VLAN_TAG_EDSA_LEN ;
 int MVPP2_VLAN_TAG_LEN ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static void mvpp2_prs_vid_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;

 memset(&pe, 0, sizeof(pe));


 pe.index = MVPP2_PE_VID_FLTR_DEFAULT;
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_VID);

 mvpp2_prs_tcam_ai_update(&pe, 0, MVPP2_PRS_EDSA_VID_AI_BIT);


 mvpp2_prs_sram_shift_set(&pe, MVPP2_VLAN_TAG_LEN,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


 mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_L2);


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_VID);
 mvpp2_prs_hw_write(priv, &pe);


 memset(&pe, 0, sizeof(pe));


 pe.index = MVPP2_PE_VID_EDSA_FLTR_DEFAULT;
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_VID);

 mvpp2_prs_tcam_ai_update(&pe, MVPP2_PRS_EDSA_VID_AI_BIT,
     MVPP2_PRS_EDSA_VID_AI_BIT);


 mvpp2_prs_sram_shift_set(&pe, MVPP2_VLAN_TAG_EDSA_LEN,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


 mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_L2);


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_VID);
 mvpp2_prs_hw_write(priv, &pe);
}
