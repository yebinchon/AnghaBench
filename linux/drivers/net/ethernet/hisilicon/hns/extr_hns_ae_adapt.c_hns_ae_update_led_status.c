
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {scalar_t__ media_type; } ;
struct hnae_handle {int dummy; } ;


 scalar_t__ HNAE_MEDIA_TYPE_FIBER ;
 int assert (struct hnae_handle*) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_set_led_opt (struct hns_mac_cb*) ;

__attribute__((used)) static void hns_ae_update_led_status(struct hnae_handle *handle)
{
 struct hns_mac_cb *mac_cb;

 assert(handle);
 mac_cb = hns_get_mac_cb(handle);
 if (mac_cb->media_type != HNAE_MEDIA_TYPE_FIBER)
  return;

 hns_set_led_opt(mac_cb);
}
