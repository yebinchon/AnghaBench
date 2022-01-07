
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int dummy; } ;


 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_get_link_status (struct hns_mac_cb*,int *) ;

__attribute__((used)) static int hns_ae_get_link_status(struct hnae_handle *handle)
{
 u32 link_status;
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 hns_mac_get_link_status(mac_cb, &link_status);

 return !!link_status;
}
