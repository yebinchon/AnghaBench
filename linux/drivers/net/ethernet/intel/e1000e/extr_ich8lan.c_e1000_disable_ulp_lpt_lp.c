
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_13__ {scalar_t__ ulp_state; } ;
struct TYPE_14__ {TYPE_6__ ich8lan; } ;
struct TYPE_11__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;} ;
struct TYPE_12__ {TYPE_4__ ops; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_7__ dev_spec; TYPE_5__ phy; TYPE_3__* adapter; TYPE_1__ mac; } ;
typedef int s32 ;
struct TYPE_10__ {TYPE_2__* pdev; } ;
struct TYPE_9__ {scalar_t__ device; } ;


 int CTRL_EXT ;
 int CV_SMB_CTRL ;
 int CV_SMB_CTRL_FORCE_SMBUS ;
 int E1000_CTRL_EXT_FORCE_SMBUS ;
 scalar_t__ E1000_DEV_ID_PCH_I218_LM2 ;
 scalar_t__ E1000_DEV_ID_PCH_I218_V2 ;
 scalar_t__ E1000_DEV_ID_PCH_LPT_I217_LM ;
 scalar_t__ E1000_DEV_ID_PCH_LPT_I217_V ;
 int E1000_ERR_PHY ;
 int E1000_FEXTNVM7_DISABLE_SMB_PERST ;
 int E1000_FWSM_ULP_CFG_DONE ;
 int E1000_H2ME_ENFORCE_SETTINGS ;
 int E1000_H2ME_ULP ;
 int E1000_ICH_FWSM_FW_VALID ;
 int FEXTNVM7 ;
 int FWSM ;
 int H2ME ;
 int HV_PM_CTRL ;
 int HV_PM_CTRL_K1_ENABLE ;
 int I218_ULP_CONFIG1 ;
 int I218_ULP_CONFIG1_DISABLE_SMB_PERST ;
 int I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST ;
 int I218_ULP_CONFIG1_EN_ULP_LANPHYPC ;
 int I218_ULP_CONFIG1_INBAND_EXIT ;
 int I218_ULP_CONFIG1_IND ;
 int I218_ULP_CONFIG1_RESET_TO_SMBUS ;
 int I218_ULP_CONFIG1_START ;
 int I218_ULP_CONFIG1_STICKY_ULP ;
 int I218_ULP_CONFIG1_WOL_HOST ;
 scalar_t__ e1000_pch_lpt ;
 int e1000_phy_hw_reset (struct e1000_hw*) ;
 int e1000_read_phy_reg_hv_locked (struct e1000_hw*,int ,int*) ;
 int e1000_toggle_lanphypc_pch_lpt (struct e1000_hw*) ;
 scalar_t__ e1000_ulp_state_off ;
 int e1000_write_phy_reg_hv_locked (struct e1000_hw*,int ,int) ;
 int e_dbg (char*,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
{
 s32 ret_val = 0;
 u32 mac_reg;
 u16 phy_reg;
 int i = 0;

 if ((hw->mac.type < e1000_pch_lpt) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_LM) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_V) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_LM2) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_V2) ||
     (hw->dev_spec.ich8lan.ulp_state == e1000_ulp_state_off))
  return 0;

 if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
  if (force) {

   mac_reg = er32(H2ME);
   mac_reg &= ~E1000_H2ME_ULP;
   mac_reg |= E1000_H2ME_ENFORCE_SETTINGS;
   ew32(H2ME, mac_reg);
  }


  while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
   if (i++ == 30) {
    ret_val = -E1000_ERR_PHY;
    goto out;
   }

   usleep_range(10000, 11000);
  }
  e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);

  if (force) {
   mac_reg = er32(H2ME);
   mac_reg &= ~E1000_H2ME_ENFORCE_SETTINGS;
   ew32(H2ME, mac_reg);
  } else {

   mac_reg = er32(H2ME);
   mac_reg &= ~E1000_H2ME_ULP;
   ew32(H2ME, mac_reg);
  }

  goto out;
 }

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  goto out;

 if (force)

  e1000_toggle_lanphypc_pch_lpt(hw);


 ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
 if (ret_val) {



  mac_reg = er32(CTRL_EXT);
  mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
  ew32(CTRL_EXT, mac_reg);

  msleep(50);

  ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL,
             &phy_reg);
  if (ret_val)
   goto release;
 }
 phy_reg &= ~CV_SMB_CTRL_FORCE_SMBUS;
 e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);


 mac_reg = er32(CTRL_EXT);
 mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
 ew32(CTRL_EXT, mac_reg);




 ret_val = e1000_read_phy_reg_hv_locked(hw, HV_PM_CTRL, &phy_reg);
 if (ret_val)
  goto release;
 phy_reg |= HV_PM_CTRL_K1_ENABLE;
 e1000_write_phy_reg_hv_locked(hw, HV_PM_CTRL, phy_reg);


 ret_val = e1000_read_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, &phy_reg);
 if (ret_val)
  goto release;
 phy_reg &= ~(I218_ULP_CONFIG1_IND |
       I218_ULP_CONFIG1_STICKY_ULP |
       I218_ULP_CONFIG1_RESET_TO_SMBUS |
       I218_ULP_CONFIG1_WOL_HOST |
       I218_ULP_CONFIG1_INBAND_EXIT |
       I218_ULP_CONFIG1_EN_ULP_LANPHYPC |
       I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST |
       I218_ULP_CONFIG1_DISABLE_SMB_PERST);
 e1000_write_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, phy_reg);


 phy_reg |= I218_ULP_CONFIG1_START;
 e1000_write_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, phy_reg);


 mac_reg = er32(FEXTNVM7);
 mac_reg &= ~E1000_FEXTNVM7_DISABLE_SMB_PERST;
 ew32(FEXTNVM7, mac_reg);

release:
 hw->phy.ops.release(hw);
 if (force) {
  e1000_phy_hw_reset(hw);
  msleep(50);
 }
out:
 if (ret_val)
  e_dbg("Error in ULP disable flow: %d\n", ret_val);
 else
  hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_off;

 return ret_val;
}
