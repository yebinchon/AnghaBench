
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hns_ppe_cb {int dummy; } ;
struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_vf_cb {int port_index; } ;
struct hnae_handle {int q_num; int dev; } ;
struct dsaf_device {int dummy; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ HNAE_PORT_SERVICE ;
 int assert (struct hnae_handle*) ;
 struct dsaf_device* hns_ae_get_dsaf_dev (int ) ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 int hns_dsaf_get_strings (int ,int *,int,struct dsaf_device*) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 struct hns_ppe_cb* hns_get_ppe_cb (struct hnae_handle*) ;
 int hns_mac_get_sset_count (struct hns_mac_cb*,int ) ;
 int hns_mac_get_strings (struct hns_mac_cb*,int ,int *) ;
 int hns_ppe_get_sset_count (int ) ;
 int hns_ppe_get_strings (struct hns_ppe_cb*,int ,int *) ;
 int hns_rcb_get_ring_sset_count (int ) ;
 int hns_rcb_get_strings (int ,int *,int) ;

__attribute__((used)) static void hns_ae_get_strings(struct hnae_handle *handle,
          u32 stringset, u8 *data)
{
 int port;
 int idx;
 struct hns_mac_cb *mac_cb;
 struct hns_ppe_cb *ppe_cb;
 struct dsaf_device *dsaf_dev = hns_ae_get_dsaf_dev(handle->dev);
 u8 *p = data;
 struct hnae_vf_cb *vf_cb;

 assert(handle);

 vf_cb = hns_ae_get_vf_cb(handle);
 port = vf_cb->port_index;
 mac_cb = hns_get_mac_cb(handle);
 ppe_cb = hns_get_ppe_cb(handle);

 for (idx = 0; idx < handle->q_num; idx++) {
  hns_rcb_get_strings(stringset, p, idx);
  p += ETH_GSTRING_LEN * hns_rcb_get_ring_sset_count(stringset);
 }

 hns_ppe_get_strings(ppe_cb, stringset, p);
 p += ETH_GSTRING_LEN * hns_ppe_get_sset_count(stringset);

 hns_mac_get_strings(mac_cb, stringset, p);
 p += ETH_GSTRING_LEN * hns_mac_get_sset_count(mac_cb, stringset);

 if (mac_cb->mac_type == HNAE_PORT_SERVICE)
  hns_dsaf_get_strings(stringset, p, port, dsaf_dev);
}
