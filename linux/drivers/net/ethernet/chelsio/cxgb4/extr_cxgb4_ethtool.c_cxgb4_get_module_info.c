
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_info {int port_type; int tx_chan; int mod_type; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;
struct adapter {int mbox; } ;


 int EINVAL ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8436 ;
 int ETH_MODULE_SFF_8436_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 int ETH_MODULE_SFF_8636 ;
 int ETH_MODULE_SFF_8636_LEN ;
 int I2C_DEV_ADDR_A0 ;
 int SFF_8472_COMP_ADDR ;
 int SFF_8472_COMP_LEN ;
 int SFF_REV_ADDR ;
 int SFF_REV_LEN ;
 int SFP_DIAG_TYPE_ADDR ;
 int SFP_DIAG_TYPE_LEN ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_i2c_rd (struct adapter*,int ,int ,int ,int ,int ,int*) ;
 int t4_is_inserted_mod_type (int ) ;

__attribute__((used)) static int cxgb4_get_module_info(struct net_device *dev,
     struct ethtool_modinfo *modinfo)
{
 struct port_info *pi = netdev_priv(dev);
 u8 sff8472_comp, sff_diag_type, sff_rev;
 struct adapter *adapter = pi->adapter;
 int ret;

 if (!t4_is_inserted_mod_type(pi->mod_type))
  return -EINVAL;

 switch (pi->port_type) {
 case 129:
 case 132:
 case 128:
  ret = t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan,
    I2C_DEV_ADDR_A0, SFF_8472_COMP_ADDR,
    SFF_8472_COMP_LEN, &sff8472_comp);
  if (ret)
   return ret;
  ret = t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan,
    I2C_DEV_ADDR_A0, SFP_DIAG_TYPE_ADDR,
    SFP_DIAG_TYPE_LEN, &sff_diag_type);
  if (ret)
   return ret;

  if (!sff8472_comp || (sff_diag_type & 4)) {
   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8472;
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  }
  break;

 case 131:
 case 130:
 case 133:
 case 135:
 case 134:
  ret = t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan,
    I2C_DEV_ADDR_A0, SFF_REV_ADDR,
    SFF_REV_LEN, &sff_rev);



  if (ret)
   return ret;
  if (sff_rev >= 0x3) {
   modinfo->type = ETH_MODULE_SFF_8636;
   modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8436;
   modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  }
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
