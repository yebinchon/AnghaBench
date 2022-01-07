
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ice_vsi {scalar_t__ type; int idx; scalar_t__ vlan_ena; TYPE_1__* back; } ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {struct ice_hw hw; } ;


 int EIO ;
 scalar_t__ ICE_VSI_PF ;
 int ice_clear_vsi_promisc (struct ice_hw*,int ,int ,int ) ;
 int ice_set_vlan_vsi_promisc (struct ice_hw*,int ,int ,int) ;
 int ice_set_vsi_promisc (struct ice_hw*,int ,int ,int ) ;

__attribute__((used)) static int ice_cfg_promisc(struct ice_vsi *vsi, u8 promisc_m, bool set_promisc)
{
 struct ice_hw *hw = &vsi->back->hw;
 enum ice_status status = 0;

 if (vsi->type != ICE_VSI_PF)
  return 0;

 if (vsi->vlan_ena) {
  status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
        set_promisc);
 } else {
  if (set_promisc)
   status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
           0);
  else
   status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
             0);
 }

 if (status)
  return -EIO;

 return 0;
}
