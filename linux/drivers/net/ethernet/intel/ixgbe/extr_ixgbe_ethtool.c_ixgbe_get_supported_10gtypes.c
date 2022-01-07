
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int media_type; } ;
struct ixgbe_hw {int device_id; TYPE_1__ phy; } ;
 int SUPPORTED_10000baseKR_Full ;
 int SUPPORTED_10000baseKX4_Full ;
 int SUPPORTED_10000baseT_Full ;
 int ixgbe_isbackplane (int ) ;

__attribute__((used)) static u32 ixgbe_get_supported_10gtypes(struct ixgbe_hw *hw)
{
 if (!ixgbe_isbackplane(hw->phy.media_type))
  return SUPPORTED_10000baseT_Full;

 switch (hw->device_id) {
 case 135:
 case 132:
 case 131:
 case 129:
  return SUPPORTED_10000baseKX4_Full;
 case 134:
 case 133:
 case 130:
 case 128:
  return SUPPORTED_10000baseKR_Full;
 default:
  return SUPPORTED_10000baseKX4_Full |
         SUPPORTED_10000baseKR_Full;
 }
}
