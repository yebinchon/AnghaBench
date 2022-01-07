
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct iavf_hw {scalar_t__ vendor_id; int device_id; TYPE_1__ mac; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;






 int IAVF_ERR_DEVICE_NOT_SUPPORTED ;
 int IAVF_MAC_GENERIC ;
 int IAVF_MAC_VF ;
 int IAVF_MAC_X722_VF ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int hw_dbg (struct iavf_hw*,char*,int ,int) ;

enum iavf_status iavf_set_mac_type(struct iavf_hw *hw)
{
 enum iavf_status status = 0;

 if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
  switch (hw->device_id) {
  case 128:
   hw->mac.type = IAVF_MAC_X722_VF;
   break;
  case 130:
  case 129:
  case 131:
   hw->mac.type = IAVF_MAC_VF;
   break;
  default:
   hw->mac.type = IAVF_MAC_GENERIC;
   break;
  }
 } else {
  status = IAVF_ERR_DEVICE_NOT_SUPPORTED;
 }

 hw_dbg(hw, "found mac: %d, returns: %d\n", hw->mac.type, status);
 return status;
}
