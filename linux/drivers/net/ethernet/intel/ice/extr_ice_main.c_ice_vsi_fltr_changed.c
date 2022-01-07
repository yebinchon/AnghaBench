
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int flags; } ;


 int ICE_VSI_FLAG_MMAC_FLTR_CHANGED ;
 int ICE_VSI_FLAG_UMAC_FLTR_CHANGED ;
 int ICE_VSI_FLAG_VLAN_FLTR_CHANGED ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
{
 return test_bit(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags) ||
        test_bit(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags) ||
        test_bit(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);
}
