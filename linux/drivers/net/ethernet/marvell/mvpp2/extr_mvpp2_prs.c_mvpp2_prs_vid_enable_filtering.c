
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {unsigned int index; } ;
struct mvpp2_port {int id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
struct TYPE_2__ {scalar_t__ valid; } ;


 unsigned int MVPP2_DSA_EXTENDED ;
 int MVPP2_MH_REG (int ) ;
 int MVPP2_PRS_LU_L2 ;
 int MVPP2_PRS_LU_VID ;
 int MVPP2_PRS_RI_DROP_MASK ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 unsigned int MVPP2_PRS_VID_PORT_DFLT (int ) ;
 unsigned int MVPP2_VLAN_TAG_EDSA_LEN ;
 unsigned int MVPP2_VLAN_TAG_LEN ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,unsigned int,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,unsigned int,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_set (struct mvpp2_prs_entry*,int ,int) ;
 unsigned int mvpp2_read (struct mvpp2*,int ) ;

void mvpp2_prs_vid_enable_filtering(struct mvpp2_port *port)
{
 unsigned int tid = MVPP2_PRS_VID_PORT_DFLT(port->id);
 struct mvpp2 *priv = port->priv;
 unsigned int reg_val, shift;
 struct mvpp2_prs_entry pe;

 if (priv->prs_shadow[tid].valid)
  return;

 memset(&pe, 0, sizeof(pe));

 pe.index = tid;

 reg_val = mvpp2_read(priv, MVPP2_MH_REG(port->id));
 if (reg_val & MVPP2_DSA_EXTENDED)
  shift = MVPP2_VLAN_TAG_EDSA_LEN;
 else
  shift = MVPP2_VLAN_TAG_LEN;

 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_VID);


 mvpp2_prs_tcam_port_map_set(&pe, 0);


 mvpp2_prs_tcam_port_set(&pe, port->id, 1);


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_L2);


 mvpp2_prs_sram_shift_set(&pe, shift, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_DROP_MASK,
     MVPP2_PRS_RI_DROP_MASK);


 mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_VID);
 mvpp2_prs_hw_write(priv, &pe);
}
