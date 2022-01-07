
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {scalar_t__ vendor_id; int mac_type; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_DEVICE_NOT_SUPPORTED ;
 int ICE_MAC_GENERIC ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;

__attribute__((used)) static enum ice_status ice_set_mac_type(struct ice_hw *hw)
{
 if (hw->vendor_id != PCI_VENDOR_ID_INTEL)
  return ICE_ERR_DEVICE_NOT_SUPPORTED;

 hw->mac_type = ICE_MAC_GENERIC;
 return 0;
}
