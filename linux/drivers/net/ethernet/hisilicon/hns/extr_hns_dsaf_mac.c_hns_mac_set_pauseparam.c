
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mac_driver {int (* mac_pausefrm_cfg ) (struct mac_driver*,scalar_t__,scalar_t__) ;} ;
struct hns_mac_cb {scalar_t__ mac_type; int dev; TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int EINVAL ;
 scalar_t__ HNAE_PORT_DEBUG ;
 int dev_err (int ,char*) ;
 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*,scalar_t__,scalar_t__) ;

int hns_mac_set_pauseparam(struct hns_mac_cb *mac_cb, u32 rx_en, u32 tx_en)
{
 struct mac_driver *mac_ctrl_drv = hns_mac_get_drv(mac_cb);
 bool is_ver1 = AE_IS_VER1(mac_cb->dsaf_dev->dsaf_ver);

 if (mac_cb->mac_type == HNAE_PORT_DEBUG) {
  if (is_ver1 && (tx_en || rx_en)) {
   dev_err(mac_cb->dev, "macv1 can't enable tx/rx_pause!\n");
   return -EINVAL;
  }
 }

 if (mac_ctrl_drv->mac_pausefrm_cfg)
  mac_ctrl_drv->mac_pausefrm_cfg(mac_ctrl_drv, rx_en, tx_en);

 return 0;
}
