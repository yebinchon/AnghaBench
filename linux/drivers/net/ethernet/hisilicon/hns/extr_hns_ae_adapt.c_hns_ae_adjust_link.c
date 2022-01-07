
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_mac_cb {TYPE_1__* dsaf_dev; } ;
struct hnae_handle {int dummy; } ;
struct TYPE_2__ {int dsaf_ver; } ;




 int MAC_COMM_MODE_RX ;
 int hns_ae_wait_flow_down (struct hnae_handle*) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_adjust_link (struct hns_mac_cb*,int,int) ;
 int hns_mac_disable (struct hns_mac_cb*,int ) ;
 int hns_mac_enable (struct hns_mac_cb*,int ) ;

__attribute__((used)) static void hns_ae_adjust_link(struct hnae_handle *handle, int speed,
          int duplex)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 switch (mac_cb->dsaf_dev->dsaf_ver) {
 case 129:
  hns_mac_adjust_link(mac_cb, speed, duplex);
  break;

 case 128:

  hns_mac_disable(mac_cb, MAC_COMM_MODE_RX);
  if (hns_ae_wait_flow_down(handle)) {
   hns_mac_enable(mac_cb, MAC_COMM_MODE_RX);
   break;
  }

  hns_mac_adjust_link(mac_cb, speed, duplex);
  hns_mac_enable(mac_cb, MAC_COMM_MODE_RX);
  break;

 default:
  break;
 }

 return;
}
