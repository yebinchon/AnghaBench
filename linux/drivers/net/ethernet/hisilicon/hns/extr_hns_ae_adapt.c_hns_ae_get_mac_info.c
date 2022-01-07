
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int dummy; } ;


 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_get_port_info (struct hns_mac_cb*,int *,int *,int *) ;

__attribute__((used)) static int hns_ae_get_mac_info(struct hnae_handle *handle,
          u8 *auto_neg, u16 *speed, u8 *duplex)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 return hns_mac_get_port_info(mac_cb, auto_neg, speed, duplex);
}
