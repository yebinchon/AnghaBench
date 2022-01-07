
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1e_hw {int phy_configured; int re_autoneg; struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {int netdev; } ;
typedef int s32 ;


 int AT_WRITE_REGW (struct atl1e_hw*,int ,int) ;
 int GPHY_CTRL_DEFAULT ;
 int GPHY_CTRL_EXT_RESET ;
 int MII_DBG_ADDR ;
 int MII_DBG_DATA ;
 int MII_INT_CTRL ;
 int REG_GPHY_CTRL ;
 int atl1e_phy_commit (struct atl1e_hw*) ;
 int atl1e_phy_setup_autoneg_adv (struct atl1e_hw*) ;
 int atl1e_restart_autoneg (struct atl1e_hw*) ;
 int atl1e_write_phy_reg (struct atl1e_hw*,int ,int) ;
 int msleep (int) ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*) ;

int atl1e_phy_init(struct atl1e_hw *hw)
{
 struct atl1e_adapter *adapter = hw->adapter;
 s32 ret_val;
 u16 phy_val;

 if (hw->phy_configured) {
  if (hw->re_autoneg) {
   hw->re_autoneg = 0;
   return atl1e_restart_autoneg(hw);
  }
  return 0;
 }


 AT_WRITE_REGW(hw, REG_GPHY_CTRL, GPHY_CTRL_DEFAULT);
 msleep(2);
 AT_WRITE_REGW(hw, REG_GPHY_CTRL, GPHY_CTRL_DEFAULT |
        GPHY_CTRL_EXT_RESET);
 msleep(2);



 ret_val = atl1e_write_phy_reg(hw, MII_DBG_ADDR, 0xB);
 if (ret_val)
  return ret_val;
 ret_val = atl1e_write_phy_reg(hw, MII_DBG_DATA, 0xBC00);
 if (ret_val)
  return ret_val;

 ret_val = atl1e_write_phy_reg(hw, MII_DBG_ADDR, 0);
 if (ret_val)
  return ret_val;
 phy_val = 0x02ef;


 ret_val = atl1e_write_phy_reg(hw, MII_DBG_DATA, phy_val);
 if (ret_val)
  return ret_val;

 ret_val = atl1e_write_phy_reg(hw, MII_DBG_ADDR, 0x12);
 if (ret_val)
  return ret_val;
 ret_val = atl1e_write_phy_reg(hw, MII_DBG_DATA, 0x4C04);
 if (ret_val)
  return ret_val;

 ret_val = atl1e_write_phy_reg(hw, MII_DBG_ADDR, 0x4);
 if (ret_val)
  return ret_val;
 ret_val = atl1e_write_phy_reg(hw, MII_DBG_DATA, 0x8BBB);
 if (ret_val)
  return ret_val;

 ret_val = atl1e_write_phy_reg(hw, MII_DBG_ADDR, 0x5);
 if (ret_val)
  return ret_val;
 ret_val = atl1e_write_phy_reg(hw, MII_DBG_DATA, 0x2C46);
 if (ret_val)
  return ret_val;

 msleep(1);


 ret_val = atl1e_write_phy_reg(hw, MII_INT_CTRL, 0xC00);
 if (ret_val) {
  netdev_err(adapter->netdev,
      "Error enable PHY linkChange Interrupt\n");
  return ret_val;
 }

 ret_val = atl1e_phy_setup_autoneg_adv(hw);
 if (ret_val) {
  netdev_err(adapter->netdev,
      "Error Setting up Auto-Negotiation\n");
  return ret_val;
 }

 netdev_dbg(adapter->netdev, "Restarting Auto-Negotiation\n");
 ret_val = atl1e_phy_commit(hw);
 if (ret_val) {
  netdev_err(adapter->netdev, "Error resetting the phy\n");
  return ret_val;
 }

 hw->phy_configured = 1;

 return 0;
}
