
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_handle {int vf_id; } ;


 scalar_t__ HNAE_PORT_SERVICE ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_clr_multicast (struct hns_mac_cb*,int ) ;

__attribute__((used)) static int hns_ae_clr_multicast(struct hnae_handle *handle)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 if (mac_cb->mac_type != HNAE_PORT_SERVICE)
  return 0;

 return hns_mac_clr_multicast(mac_cb, handle->vf_id);
}
