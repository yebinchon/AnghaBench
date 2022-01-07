
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int owner_dev; int vf_id; } ;


 int EADDRNOTAVAIL ;
 int dev_err (int ,char*,...) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_change_vf_addr (struct hns_mac_cb*,int ,void*) ;
 int is_valid_ether_addr (int const*) ;

__attribute__((used)) static int hns_ae_set_mac_address(struct hnae_handle *handle, void *p)
{
 int ret;
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);

 if (!p || !is_valid_ether_addr((const u8 *)p)) {
  dev_err(handle->owner_dev, "is not valid ether addr !\n");
  return -EADDRNOTAVAIL;
 }

 ret = hns_mac_change_vf_addr(mac_cb, handle->vf_id, p);
 if (ret != 0) {
  dev_err(handle->owner_dev,
   "set_mac_address fail, ret=%d!\n", ret);
  return ret;
 }

 return 0;
}
