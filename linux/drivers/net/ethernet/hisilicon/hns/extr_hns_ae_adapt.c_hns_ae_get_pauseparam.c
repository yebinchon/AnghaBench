
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_mac_cb {int mac_id; struct dsaf_device* dsaf_dev; } ;
struct hnae_handle {scalar_t__ port_type; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ HNAE_PORT_SERVICE ;
 int hns_dsaf_get_rx_mac_pause_en (struct dsaf_device*,int ,int *) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_get_autoneg (struct hns_mac_cb*,int *) ;
 int hns_mac_get_pauseparam (struct hns_mac_cb*,int *,int *) ;

__attribute__((used)) static void hns_ae_get_pauseparam(struct hnae_handle *handle,
      u32 *auto_neg, u32 *rx_en, u32 *tx_en)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;

 hns_mac_get_autoneg(mac_cb, auto_neg);

 hns_mac_get_pauseparam(mac_cb, rx_en, tx_en);


 if (handle->port_type == HNAE_PORT_SERVICE)
  hns_dsaf_get_rx_mac_pause_en(dsaf_dev, mac_cb->mac_id, rx_en);
}
