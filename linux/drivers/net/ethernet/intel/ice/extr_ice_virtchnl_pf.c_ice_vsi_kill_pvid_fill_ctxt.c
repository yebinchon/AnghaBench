
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid_sections; int sw_flags2; int vlan_flags; } ;
struct ice_vsi_ctx {TYPE_1__ info; } ;


 int ICE_AQ_VSI_PROP_SW_VALID ;
 int ICE_AQ_VSI_PROP_VLAN_VALID ;
 int ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA ;
 int ICE_AQ_VSI_VLAN_EMOD_NOTHING ;
 int ICE_AQ_VSI_VLAN_MODE_ALL ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static void ice_vsi_kill_pvid_fill_ctxt(struct ice_vsi_ctx *ctxt)
{
 ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING;
 ctxt->info.vlan_flags |= ICE_AQ_VSI_VLAN_MODE_ALL;
 ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
      ICE_AQ_VSI_PROP_SW_VALID);
}
