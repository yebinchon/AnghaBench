
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
struct TYPE_11__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_12__ {scalar_t__ type; int revision; TYPE_4__ ops; } ;
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
 int E1000_FEXT_PHY_CABLE_DISCONNECTED ;
 int E1000_H2ME_ENFORCE_SETTINGS ;
 int E1000_H2ME_ULP ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_STATUS_LU ;
 int E1000_WUFC_LNKC ;
 int FEXT ;
 int FEXTNVM7 ;
 int FWSM ;
 int H2ME ;
 int HV_OEM_BITS ;
 int HV_OEM_BITS_GBE_DIS ;
 int HV_OEM_BITS_LPLU ;
 int I218_ULP_CONFIG1 ;
 int I218_ULP_CONFIG1_DISABLE_SMB_PERST ;
 int I218_ULP_CONFIG1_INBAND_EXIT ;
 int I218_ULP_CONFIG1_RESET_TO_SMBUS ;
 int I218_ULP_CONFIG1_START ;
 int I218_ULP_CONFIG1_STICKY_ULP ;
 int I218_ULP_CONFIG1_WOL_HOST ;
 int STATUS ;
 int WUFC ;
 scalar_t__ e1000_pch_lpt ;
 scalar_t__ e1000_phy_i217 ;
 int e1000_read_phy_reg_hv_locked (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_ulp_state_on ;
 int e1000_write_phy_reg_hv_locked (struct e1000_hw*,int ,int) ;
 int e_dbg (char*,char*,...) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
{
 u32 mac_reg;
 s32 ret_val = 0;
 u16 phy_reg;
 u16 oem_reg = 0;

 if ((hw->mac.type < e1000_pch_lpt) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_LM) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_V) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_LM2) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_V2) ||
     (hw->dev_spec.ich8lan.ulp_state == e1000_ulp_state_on))
  return 0;

 if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {

  mac_reg = er32(H2ME);
  mac_reg |= E1000_H2ME_ULP | E1000_H2ME_ENFORCE_SETTINGS;
  ew32(H2ME, mac_reg);

  goto out;
 }

 if (!to_sx) {
  int i = 0;


  while (!(er32(FEXT) & E1000_FEXT_PHY_CABLE_DISCONNECTED)) {

   if (er32(STATUS) & E1000_STATUS_LU)
    return -E1000_ERR_PHY;

   if (i++ == 100)
    break;

   msleep(50);
  }
  e_dbg("CABLE_DISCONNECTED %s set after %dmsec\n",
        (er32(FEXT) &
         E1000_FEXT_PHY_CABLE_DISCONNECTED) ? "" : "not", i * 50);
 }

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  goto out;


 ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
 if (ret_val)
  goto release;
 phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
 e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);


 mac_reg = er32(CTRL_EXT);
 mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
 ew32(CTRL_EXT, mac_reg);




 if ((hw->phy.type == e1000_phy_i217) && (hw->phy.revision == 6)) {
  ret_val = e1000_read_phy_reg_hv_locked(hw, HV_OEM_BITS,
             &oem_reg);
  if (ret_val)
   goto release;

  phy_reg = oem_reg;
  phy_reg |= HV_OEM_BITS_LPLU | HV_OEM_BITS_GBE_DIS;

  ret_val = e1000_write_phy_reg_hv_locked(hw, HV_OEM_BITS,
       phy_reg);

  if (ret_val)
   goto release;
 }




 ret_val = e1000_read_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, &phy_reg);
 if (ret_val)
  goto release;
 phy_reg |= (I218_ULP_CONFIG1_RESET_TO_SMBUS |
      I218_ULP_CONFIG1_DISABLE_SMB_PERST);
 if (to_sx) {
  if (er32(WUFC) & E1000_WUFC_LNKC)
   phy_reg |= I218_ULP_CONFIG1_WOL_HOST;
  else
   phy_reg &= ~I218_ULP_CONFIG1_WOL_HOST;

  phy_reg |= I218_ULP_CONFIG1_STICKY_ULP;
  phy_reg &= ~I218_ULP_CONFIG1_INBAND_EXIT;
 } else {
  phy_reg |= I218_ULP_CONFIG1_INBAND_EXIT;
  phy_reg &= ~I218_ULP_CONFIG1_STICKY_ULP;
  phy_reg &= ~I218_ULP_CONFIG1_WOL_HOST;
 }
 e1000_write_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, phy_reg);


 mac_reg = er32(FEXTNVM7);
 mac_reg |= E1000_FEXTNVM7_DISABLE_SMB_PERST;
 ew32(FEXTNVM7, mac_reg);


 phy_reg |= I218_ULP_CONFIG1_START;
 e1000_write_phy_reg_hv_locked(hw, I218_ULP_CONFIG1, phy_reg);

 if ((hw->phy.type == e1000_phy_i217) && (hw->phy.revision == 6) &&
     to_sx && (er32(STATUS) & E1000_STATUS_LU)) {
  ret_val = e1000_write_phy_reg_hv_locked(hw, HV_OEM_BITS,
       oem_reg);
  if (ret_val)
   goto release;
 }

release:
 hw->phy.ops.release(hw);
out:
 if (ret_val)
  e_dbg("Error in ULP enable flow: %d\n", ret_val);
 else
  hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_on;

 return ret_val;
}
