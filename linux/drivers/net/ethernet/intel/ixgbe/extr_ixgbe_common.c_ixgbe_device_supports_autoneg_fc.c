
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int media_type; } ;
struct ixgbe_hw {int device_id; TYPE_3__ mac; TYPE_1__ phy; } ;
typedef int ixgbe_link_speed ;
 int IXGBE_DEV_ID_X550EM_X_XFI ;


 int IXGBE_LINK_SPEED_1GB_FULL ;
 int hw_dbg (struct ixgbe_hw*,char*,int ) ;



 int stub1 (struct ixgbe_hw*,int *,int*,int) ;

bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
{
 bool supported = 0;
 ixgbe_link_speed speed;
 bool link_up;

 switch (hw->phy.media_type) {
 case 128:

  switch (hw->device_id) {
  case 135:
  case 134:
   supported = 0;
   break;
  default:
   hw->mac.ops.check_link(hw, &speed, &link_up, 0);

   if (link_up)
    supported = speed == IXGBE_LINK_SPEED_1GB_FULL ?
    1 : 0;
   else
    supported = 1;
  }

  break;
 case 130:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_X_XFI)
   supported = 0;
  else
   supported = 1;
  break;
 case 129:

  switch (hw->device_id) {
  case 141:
  case 140:
  case 139:
  case 132:
  case 131:
  case 133:
  case 138:
  case 137:
  case 136:
   supported = 1;
   break;
  default:
   break;
  }
 default:
  break;
 }

 if (!supported)
  hw_dbg(hw, "Device %x does not support flow control autoneg\n",
         hw->device_id);

 return supported;
}
