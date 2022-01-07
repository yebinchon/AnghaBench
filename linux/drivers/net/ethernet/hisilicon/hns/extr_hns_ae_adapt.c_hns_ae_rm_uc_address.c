
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_handle {int vf_id; } ;


 int ENOSPC ;
 scalar_t__ HNAE_PORT_SERVICE ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_rm_uc_addr (struct hns_mac_cb*,int ,unsigned char const*) ;

__attribute__((used)) static int hns_ae_rm_uc_address(struct hnae_handle *handle,
    const unsigned char *addr)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 if (mac_cb->mac_type != HNAE_PORT_SERVICE)
  return -ENOSPC;

 return hns_mac_rm_uc_addr(mac_cb, handle->vf_id, addr);
}
