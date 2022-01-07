
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
 int ixgbe_media_type_fiber ;
 int ixgbe_media_type_unknown ;
 int ixgbe_phy_sgmii ;

__attribute__((used)) static enum ixgbe_media_type ixgbe_get_media_type_X550em(struct ixgbe_hw *hw)
{
 enum ixgbe_media_type media_type;


 switch (hw->device_id) {
 case 135:
 case 134:
  hw->phy.type = ixgbe_phy_sgmii;

 case 131:
 case 130:
 case 128:
 case 139:
 case 138:
  media_type = ixgbe_media_type_backplane;
  break;
 case 129:
 case 137:
 case 136:
  media_type = ixgbe_media_type_fiber;
  break;
 case 132:
 case 133:
 case 142:
 case 141:
 case 140:
  media_type = ixgbe_media_type_copper;
  break;
 default:
  media_type = ixgbe_media_type_unknown;
  break;
 }
 return media_type;
}
