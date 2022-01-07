
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int dev; } ;


 int hns_ae_get_dsaf_dev (int ) ;
 int hns_dsaf_set_promisc_mode (int ,int ) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_set_promisc (struct hns_mac_cb*,int ) ;

__attribute__((used)) static void hns_ae_set_promisc_mode(struct hnae_handle *handle, u32 en)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 hns_dsaf_set_promisc_mode(hns_ae_get_dsaf_dev(handle->dev), en);
 hns_mac_set_promisc(mac_cb, (u8)!!en);
}
