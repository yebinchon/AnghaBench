
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* read_module_eeprom ) (int ,int*,int ,int ,int) ;} ;


 int DP_ERR (struct qede_dev*,char*,int) ;
 int EINVAL ;
 int ETH_MODULE_SFF_8436 ;
 int ETH_MODULE_SFF_8436_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 int ETH_MODULE_SFF_8636 ;
 int ETH_MODULE_SFF_8636_LEN ;
 int QED_I2C_DEV_ADDR_A0 ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int*,int ,int ,int) ;

__attribute__((used)) static int qede_get_module_info(struct net_device *dev,
    struct ethtool_modinfo *modinfo)
{
 struct qede_dev *edev = netdev_priv(dev);
 u8 buf[4];
 int rc;


 rc = edev->ops->common->read_module_eeprom(edev->cdev, buf,
         QED_I2C_DEV_ADDR_A0, 0, 4);
 if (rc) {
  DP_ERR(edev, "Failed reading EEPROM data %d\n", rc);
  return rc;
 }

 switch (buf[0]) {
 case 0x3:
  modinfo->type = ETH_MODULE_SFF_8472;
  modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  break;
 case 0xc:
 case 0xd:
  modinfo->type = ETH_MODULE_SFF_8436;
  modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  break;
 case 0x11:
  modinfo->type = ETH_MODULE_SFF_8636;
  modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
  break;
 default:
  DP_ERR(edev, "Unknown transceiver type 0x%x\n", buf[0]);
  return -EINVAL;
 }

 return 0;
}
