
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sfp_type; } ;
struct TYPE_4__ {int (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_SFP_NOT_PRESENT ;
 int ixgbe_identify_qsfp_module_generic (struct ixgbe_hw*) ;
 int ixgbe_identify_sfp_module_generic (struct ixgbe_hw*) ;


 int ixgbe_sfp_type_not_present ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_identify_module_generic(struct ixgbe_hw *hw)
{
 switch (hw->mac.ops.get_media_type(hw)) {
 case 129:
  return ixgbe_identify_sfp_module_generic(hw);
 case 128:
  return ixgbe_identify_qsfp_module_generic(hw);
 default:
  hw->phy.sfp_type = ixgbe_sfp_type_not_present;
  return IXGBE_ERR_SFP_NOT_PRESENT;
 }

 return IXGBE_ERR_SFP_NOT_PRESENT;
}
