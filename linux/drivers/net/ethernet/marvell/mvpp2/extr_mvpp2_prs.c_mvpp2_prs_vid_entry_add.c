
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mvpp2_prs_entry {int index; } ;
struct mvpp2_port {unsigned int id; struct mvpp2* priv; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 unsigned int MVPP2_DSA_EXTENDED ;
 int MVPP2_MH_REG (unsigned int) ;
 unsigned int MVPP2_PE_VID_FILT_RANGE_START ;
 int MVPP2_PRS_LU_L2 ;
 int MVPP2_PRS_LU_VID ;
 int MVPP2_PRS_SRAM_AI_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_VID_TCAM_BYTE ;
 unsigned int MVPP2_PRS_VLAN_FILT_MAX ;
 scalar_t__ MVPP2_PRS_VLAN_FILT_MAX_ENTRY ;
 unsigned int MVPP2_VLAN_TAG_EDSA_LEN ;
 unsigned int MVPP2_VLAN_TAG_LEN ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_match_vid (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,unsigned int,int ) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,unsigned int,scalar_t__) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_set (struct mvpp2_prs_entry*,unsigned int,int) ;
 int mvpp2_prs_vid_range_find (struct mvpp2_port*,int ,unsigned int) ;
 unsigned int mvpp2_read (struct mvpp2*,int ) ;

int mvpp2_prs_vid_entry_add(struct mvpp2_port *port, u16 vid)
{
 unsigned int vid_start = MVPP2_PE_VID_FILT_RANGE_START +
     port->id * MVPP2_PRS_VLAN_FILT_MAX;
 unsigned int mask = 0xfff, reg_val, shift;
 struct mvpp2 *priv = port->priv;
 struct mvpp2_prs_entry pe;
 int tid;

 memset(&pe, 0, sizeof(pe));


 tid = mvpp2_prs_vid_range_find(port, vid, mask);

 reg_val = mvpp2_read(priv, MVPP2_MH_REG(port->id));
 if (reg_val & MVPP2_DSA_EXTENDED)
  shift = MVPP2_VLAN_TAG_EDSA_LEN;
 else
  shift = MVPP2_VLAN_TAG_LEN;


 if (tid < 0) {


  tid = mvpp2_prs_tcam_first_free(priv, vid_start,
      vid_start +
      MVPP2_PRS_VLAN_FILT_MAX_ENTRY);


  if (tid < 0)
   return tid;

  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_VID);
  pe.index = tid;


  mvpp2_prs_tcam_port_map_set(&pe, 0);
 } else {
  mvpp2_prs_init_from_hw(priv, &pe, tid);
 }


 mvpp2_prs_tcam_port_set(&pe, port->id, 1);


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_L2);


 mvpp2_prs_sram_shift_set(&pe, shift, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);


 mvpp2_prs_match_vid(&pe, MVPP2_PRS_VID_TCAM_BYTE, vid);


 mvpp2_prs_sram_ai_update(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_VID);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
