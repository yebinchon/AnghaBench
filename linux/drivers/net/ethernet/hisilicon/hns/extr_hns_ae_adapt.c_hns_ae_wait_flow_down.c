
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_ppe_cb {int dummy; } ;
struct hnae_vf_cb {int mac_cb; } ;
struct hnae_handle {int q_num; int dport_id; int dev; int * qs; } ;
struct dsaf_device {int dummy; } ;


 int EINVAL ;
 struct dsaf_device* hns_ae_get_dsaf_dev (int ) ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 int hns_dsaf_wait_pkt_clean (struct dsaf_device*,int ) ;
 struct hns_ppe_cb* hns_get_ppe_cb (struct hnae_handle*) ;
 int hns_mac_wait_fifo_clean (int ) ;
 int hns_ppe_wait_tx_fifo_clean (struct hns_ppe_cb*) ;
 int hns_rcb_wait_tx_ring_clean (int ) ;
 int mdelay (int) ;

__attribute__((used)) static int hns_ae_wait_flow_down(struct hnae_handle *handle)
{
 struct dsaf_device *dsaf_dev;
 struct hns_ppe_cb *ppe_cb;
 struct hnae_vf_cb *vf_cb;
 int ret;
 int i;

 for (i = 0; i < handle->q_num; i++) {
  ret = hns_rcb_wait_tx_ring_clean(handle->qs[i]);
  if (ret)
   return ret;
 }

 ppe_cb = hns_get_ppe_cb(handle);
 ret = hns_ppe_wait_tx_fifo_clean(ppe_cb);
 if (ret)
  return ret;

 dsaf_dev = hns_ae_get_dsaf_dev(handle->dev);
 if (!dsaf_dev)
  return -EINVAL;
 ret = hns_dsaf_wait_pkt_clean(dsaf_dev, handle->dport_id);
 if (ret)
  return ret;

 vf_cb = hns_ae_get_vf_cb(handle);
 ret = hns_mac_wait_fifo_clean(vf_cb->mac_cb);
 if (ret)
  return ret;

 mdelay(10);
 return 0;
}
