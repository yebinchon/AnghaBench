
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mac_driver {int (* get_pause_enable ) (struct mac_driver*,scalar_t__*,scalar_t__*) ;} ;
struct hns_mac_cb {int dummy; } ;


 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*,scalar_t__*,scalar_t__*) ;

void hns_mac_get_pauseparam(struct hns_mac_cb *mac_cb, u32 *rx_en, u32 *tx_en)
{
 struct mac_driver *mac_ctrl_drv = hns_mac_get_drv(mac_cb);

 if (mac_ctrl_drv->get_pause_enable) {
  mac_ctrl_drv->get_pause_enable(mac_ctrl_drv, rx_en, tx_en);
 } else {
  *rx_en = 0;
  *tx_en = 0;
 }
}
