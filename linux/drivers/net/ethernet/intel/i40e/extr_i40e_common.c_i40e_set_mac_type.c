
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct i40e_hw {scalar_t__ vendor_id; int device_id; TYPE_1__ mac; } ;
typedef int i40e_status ;
 int I40E_ERR_DEVICE_NOT_SUPPORTED ;
 int I40E_MAC_GENERIC ;
 int I40E_MAC_X722 ;
 int I40E_MAC_XL710 ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int hw_dbg (struct i40e_hw*,char*,int ,int ) ;

i40e_status i40e_set_mac_type(struct i40e_hw *hw)
{
 i40e_status status = 0;

 if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
  switch (hw->device_id) {
  case 130:
  case 137:
  case 140:
  case 139:
  case 136:
  case 135:
  case 134:
  case 149:
  case 148:
  case 150:
  case 146:
  case 144:
  case 143:
  case 142:
  case 141:
  case 129:
  case 128:
   hw->mac.type = I40E_MAC_XL710;
   break;
  case 138:
  case 133:
  case 131:
  case 145:
  case 147:
  case 132:
   hw->mac.type = I40E_MAC_X722;
   break;
  default:
   hw->mac.type = I40E_MAC_GENERIC;
   break;
  }
 } else {
  status = I40E_ERR_DEVICE_NOT_SUPPORTED;
 }

 hw_dbg(hw, "i40e_set_mac_type found mac: %d, returns: %d\n",
    hw->mac.type, status);
 return status;
}
