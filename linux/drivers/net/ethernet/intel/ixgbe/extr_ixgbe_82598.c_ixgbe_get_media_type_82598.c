
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_1__ phy; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;
 int ixgbe_media_type_backplane ;
 int ixgbe_media_type_copper ;
 int ixgbe_media_type_cx4 ;
 int ixgbe_media_type_fiber ;
 int ixgbe_media_type_unknown ;



__attribute__((used)) static enum ixgbe_media_type ixgbe_get_media_type_82598(struct ixgbe_hw *hw)
{

 switch (hw->phy.type) {
 case 129:
 case 128:
  return ixgbe_media_type_copper;

 default:
  break;
 }


 switch (hw->device_id) {
 case 141:
 case 133:

  return ixgbe_media_type_backplane;

 case 140:
 case 139:
 case 131:
 case 130:
 case 134:
 case 135:
  return ixgbe_media_type_fiber;

 case 136:
 case 132:
  return ixgbe_media_type_cx4;

 case 138:
 case 137:
  return ixgbe_media_type_copper;

 default:
  return ixgbe_media_type_unknown;
 }
}
