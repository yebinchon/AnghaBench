
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* read_module_eeprom ) (int ,int *,int ,scalar_t__,scalar_t__) ;} ;


 int DP_ERR (struct qede_dev*,char*,int) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int) ;
 scalar_t__ ETH_MODULE_SFF_8079_LEN ;
 scalar_t__ ETH_MODULE_SFF_8472_LEN ;
 int QED_I2C_DEV_ADDR_A0 ;
 int QED_I2C_DEV_ADDR_A2 ;
 int QED_MSG_DEBUG ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int *,int ,scalar_t__,scalar_t__) ;
 int stub2 (int ,int *,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int qede_get_module_eeprom(struct net_device *dev,
      struct ethtool_eeprom *ee, u8 *data)
{
 struct qede_dev *edev = netdev_priv(dev);
 u32 start_addr = ee->offset, size = 0;
 u8 *buf = data;
 int rc = 0;


 if (ee->offset < ETH_MODULE_SFF_8079_LEN) {

  if (ee->offset + ee->len > ETH_MODULE_SFF_8079_LEN)
   size = ETH_MODULE_SFF_8079_LEN - ee->offset;
  else
   size = ee->len;

  rc = edev->ops->common->read_module_eeprom(edev->cdev, buf,
          QED_I2C_DEV_ADDR_A0,
          start_addr, size);
  if (rc) {
   DP_ERR(edev, "Failed reading A0 section  %d\n", rc);
   return rc;
  }

  buf += size;
  start_addr += size;
 }


 if (start_addr >= ETH_MODULE_SFF_8079_LEN &&
     start_addr < ETH_MODULE_SFF_8472_LEN) {
  size = ee->len - size;

  if (start_addr + size > ETH_MODULE_SFF_8472_LEN)
   size = ETH_MODULE_SFF_8472_LEN - start_addr;
  start_addr -= ETH_MODULE_SFF_8079_LEN;
  rc = edev->ops->common->read_module_eeprom(edev->cdev, buf,
          QED_I2C_DEV_ADDR_A2,
          start_addr, size);
  if (rc) {
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "Failed reading A2 section %d\n", rc);
   return 0;
  }
 }

 return rc;
}
