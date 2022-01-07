
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hns_mac_cb {scalar_t__ mac_type; int mac_id; } ;
struct hnae_handle {int owner_dev; int vf_id; } ;


 int DSAF_BASE_INNER_PORT_NUM ;
 scalar_t__ HNAE_PORT_SERVICE ;
 int assert (struct hns_mac_cb*) ;
 int dev_err (int ,char*,char*,int ,int) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_get_inner_port_num (struct hns_mac_cb*,int ,int *) ;
 int hns_mac_set_multi (struct hns_mac_cb*,int ,char*,int) ;

__attribute__((used)) static int hns_ae_set_multicast_one(struct hnae_handle *handle, void *addr)
{
 int ret;
 char *mac_addr = (char *)addr;
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);
 u8 port_num;

 assert(mac_cb);

 if (mac_cb->mac_type != HNAE_PORT_SERVICE)
  return 0;

 ret = hns_mac_set_multi(mac_cb, mac_cb->mac_id, mac_addr, 1);
 if (ret) {
  dev_err(handle->owner_dev,
   "mac add mul_mac:%pM port%d  fail, ret = %#x!\n",
   mac_addr, mac_cb->mac_id, ret);
  return ret;
 }

 ret = hns_mac_get_inner_port_num(mac_cb, handle->vf_id, &port_num);
 if (ret)
  return ret;

 ret = hns_mac_set_multi(mac_cb, port_num, mac_addr, 1);
 if (ret)
  dev_err(handle->owner_dev,
   "mac add mul_mac:%pM port%d  fail, ret = %#x!\n",
   mac_addr, DSAF_BASE_INNER_PORT_NUM, ret);

 return ret;
}
