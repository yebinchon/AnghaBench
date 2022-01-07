
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_driver {scalar_t__ mac_en_flg; int virt_dev_num; int (* mac_enable ) (int ,int ) ;} ;
struct TYPE_2__ {int mac; } ;
struct hns_mac_cb {TYPE_1__ priv; } ;


 int MAC_COMM_MODE_RX_AND_TX ;
 scalar_t__ MAC_EN_FLAG_V ;
 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (int ,int ) ;

void hns_mac_start(struct hns_mac_cb *mac_cb)
{
 struct mac_driver *mac_drv = hns_mac_get_drv(mac_cb);


 if (mac_drv->mac_en_flg == MAC_EN_FLAG_V) {

  mac_drv->virt_dev_num += 1;
  return;
 }

 if (mac_drv->mac_enable) {
  mac_drv->mac_enable(mac_cb->priv.mac, MAC_COMM_MODE_RX_AND_TX);
  mac_drv->mac_en_flg = MAC_EN_FLAG_V;
 }
}
