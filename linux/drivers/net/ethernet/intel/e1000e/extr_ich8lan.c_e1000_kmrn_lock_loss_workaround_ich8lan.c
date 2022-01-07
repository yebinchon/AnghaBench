
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct e1000_dev_spec_ich8lan {int kmrn_lock_loss_workaround_enabled; } ;
struct TYPE_2__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_PHY ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_GBE_DISABLE ;
 int IGP3_KMRN_DIAG ;
 int IGP3_KMRN_DIAG_PCS_LOCK_LOSS ;
 int PHY_CTRL ;
 int e1000_phy_hw_reset (struct e1000_hw*) ;
 int e1000e_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static s32 e1000_kmrn_lock_loss_workaround_ich8lan(struct e1000_hw *hw)
{
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 phy_ctrl;
 s32 ret_val;
 u16 i, data;
 bool link;

 if (!dev_spec->kmrn_lock_loss_workaround_enabled)
  return 0;





 ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
 if (!link)
  return 0;

 for (i = 0; i < 10; i++) {

  ret_val = e1e_rphy(hw, IGP3_KMRN_DIAG, &data);
  if (ret_val)
   return ret_val;

  ret_val = e1e_rphy(hw, IGP3_KMRN_DIAG, &data);
  if (ret_val)
   return ret_val;


  if (!(data & IGP3_KMRN_DIAG_PCS_LOCK_LOSS))
   return 0;


  e1000_phy_hw_reset(hw);
  mdelay(5);
 }

 phy_ctrl = er32(PHY_CTRL);
 phy_ctrl |= (E1000_PHY_CTRL_GBE_DISABLE |
       E1000_PHY_CTRL_NOND0A_GBE_DISABLE);
 ew32(PHY_CTRL, phy_ctrl);




 e1000e_gig_downshift_workaround_ich8lan(hw);


 return -E1000_ERR_PHY;
}
