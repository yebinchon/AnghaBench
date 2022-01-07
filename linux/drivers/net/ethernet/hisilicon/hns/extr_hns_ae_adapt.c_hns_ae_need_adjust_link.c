
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int dummy; } ;


 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_need_adjust_link (struct hns_mac_cb*,int,int) ;

__attribute__((used)) static bool hns_ae_need_adjust_link(struct hnae_handle *handle, int speed,
        int duplex)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 return hns_mac_need_adjust_link(mac_cb, speed, duplex);
}
