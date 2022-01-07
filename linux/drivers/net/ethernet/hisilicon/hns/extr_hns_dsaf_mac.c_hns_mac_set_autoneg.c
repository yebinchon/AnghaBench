
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_driver {int (* set_an_mode ) (struct mac_driver*,int ) ;} ;
struct hns_mac_cb {scalar_t__ phy_if; int dev; } ;


 int ENOTSUPP ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int dev_err (int ,char*) ;
 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*,int ) ;

int hns_mac_set_autoneg(struct hns_mac_cb *mac_cb, u8 enable)
{
 struct mac_driver *mac_ctrl_drv = hns_mac_get_drv(mac_cb);

 if (mac_cb->phy_if == PHY_INTERFACE_MODE_XGMII && enable) {
  dev_err(mac_cb->dev, "enabling autoneg is not allowed!\n");
  return -ENOTSUPP;
 }

 if (mac_ctrl_drv->set_an_mode)
  mac_ctrl_drv->set_an_mode(mac_ctrl_drv, enable);

 return 0;
}
