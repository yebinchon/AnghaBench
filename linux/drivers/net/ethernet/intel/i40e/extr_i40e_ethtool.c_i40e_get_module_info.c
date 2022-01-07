
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct i40e_vsi {int netdev; struct i40e_pf* back; } ;
struct TYPE_3__ {scalar_t__ phy_type; int* module_type; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct i40e_hw {int flags; TYPE_2__ phy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_modinfo {void* eeprom_len; void* type; } ;
typedef scalar_t__ i40e_status ;


 int EINVAL ;
 int EIO ;
 void* ETH_MODULE_SFF_8079 ;
 void* ETH_MODULE_SFF_8079_LEN ;
 void* ETH_MODULE_SFF_8436 ;
 void* ETH_MODULE_SFF_8472 ;
 void* ETH_MODULE_SFF_8472_LEN ;
 void* ETH_MODULE_SFF_8636 ;
 int I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE ;
 int I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE ;
 int I40E_I2C_EEPROM_DEV_ADDR ;
 void* I40E_MODULE_QSFP_MAX_LEN ;
 int I40E_MODULE_REVISION_ADDR ;
 int I40E_MODULE_SFF_8472_COMP ;
 int I40E_MODULE_SFF_8472_SWAP ;
 int I40E_MODULE_SFF_ADDR_MODE ;
 int I40E_MODULE_SFF_DDM_IMPLEMENTED ;



 scalar_t__ I40E_PHY_TYPE_EMPTY ;
 scalar_t__ i40e_aq_get_phy_register (struct i40e_hw*,int ,int ,int ,int*,int *) ;
 scalar_t__ i40e_update_link_info (struct i40e_hw*) ;
 int netdev_err (int ,char*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static int i40e_get_module_info(struct net_device *netdev,
    struct ethtool_modinfo *modinfo)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u32 sff8472_comp = 0;
 u32 sff8472_swap = 0;
 u32 sff8636_rev = 0;
 i40e_status status;
 u32 type = 0;


 if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE)) {
  netdev_err(vsi->netdev, "Module EEPROM memory read not supported. Please update the NVM image.\n");
  return -EINVAL;
 }

 status = i40e_update_link_info(hw);
 if (status)
  return -EIO;

 if (hw->phy.link_info.phy_type == I40E_PHY_TYPE_EMPTY) {
  netdev_err(vsi->netdev, "Cannot read module EEPROM memory. No module connected.\n");
  return -EINVAL;
 }

 type = hw->phy.link_info.module_type[0];

 switch (type) {
 case 128:
  status = i40e_aq_get_phy_register(hw,
    I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
    I40E_I2C_EEPROM_DEV_ADDR,
    I40E_MODULE_SFF_8472_COMP,
    &sff8472_comp, ((void*)0));
  if (status)
   return -EIO;

  status = i40e_aq_get_phy_register(hw,
    I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
    I40E_I2C_EEPROM_DEV_ADDR,
    I40E_MODULE_SFF_8472_SWAP,
    &sff8472_swap, ((void*)0));
  if (status)
   return -EIO;




  if (sff8472_swap & I40E_MODULE_SFF_ADDR_MODE) {
   netdev_warn(vsi->netdev, "Module address swap to access page 0xA2 is not supported.\n");
   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  } else if (sff8472_comp == 0x00) {

   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  } else if (!(sff8472_swap & I40E_MODULE_SFF_DDM_IMPLEMENTED)) {



   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8472;
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  }
  break;
 case 129:

  status = i40e_aq_get_phy_register(hw,
    I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
    0,
    I40E_MODULE_REVISION_ADDR,
    &sff8636_rev, ((void*)0));
  if (status)
   return -EIO;

  if (sff8636_rev > 0x02) {

   modinfo->type = ETH_MODULE_SFF_8636;
   modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8436;
   modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
  }
  break;
 case 130:
  modinfo->type = ETH_MODULE_SFF_8636;
  modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
  break;
 default:
  netdev_err(vsi->netdev, "Module type unrecognized\n");
  return -EINVAL;
 }
 return 0;
}
