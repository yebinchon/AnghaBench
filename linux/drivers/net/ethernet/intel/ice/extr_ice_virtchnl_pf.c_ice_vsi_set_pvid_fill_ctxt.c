
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vlan_flags; void* valid_sections; int sw_flags2; void* pvid; } ;
struct ice_vsi_ctx {TYPE_1__ info; } ;


 int ICE_AQ_VSI_PROP_SW_VALID ;
 int ICE_AQ_VSI_PROP_VLAN_VALID ;
 int ICE_AQ_VSI_PVLAN_INSERT_PVID ;
 int ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA ;
 int ICE_AQ_VSI_VLAN_EMOD_STR ;
 int ICE_AQ_VSI_VLAN_MODE_UNTAGGED ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void ice_vsi_set_pvid_fill_ctxt(struct ice_vsi_ctx *ctxt, u16 vid)
{
 ctxt->info.vlan_flags = (ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
     ICE_AQ_VSI_PVLAN_INSERT_PVID |
     ICE_AQ_VSI_VLAN_EMOD_STR);
 ctxt->info.pvid = cpu_to_le16(vid);
 ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
      ICE_AQ_VSI_PROP_SW_VALID);
}
