
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_vsi {int idx; } ;
struct ice_vf {int port_vlan_id; scalar_t__ num_vlan; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_clear_vsi_promisc (struct ice_hw*,int ,int ,int ) ;
 int ice_set_vlan_vsi_promisc (struct ice_hw*,int ,int ,int) ;
 int ice_set_vsi_promisc (struct ice_hw*,int ,int ,int ) ;

__attribute__((used)) static enum ice_status
ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
         bool rm_promisc)
{
 struct ice_pf *pf = vf->pf;
 enum ice_status status = 0;
 struct ice_hw *hw;

 hw = &pf->hw;
 if (vf->num_vlan) {
  status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
        rm_promisc);
 } else if (vf->port_vlan_id) {
  if (rm_promisc)
   status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
             vf->port_vlan_id);
  else
   status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
           vf->port_vlan_id);
 } else {
  if (rm_promisc)
   status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
             0);
  else
   status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
           0);
 }

 return status;
}
