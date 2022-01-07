
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int q_num; int qs; } ;


 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int hns_ae_ring_enable_all (struct hnae_handle*,int ) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_stop (struct hns_mac_cb*) ;
 int hns_mac_vm_config_bc_en (struct hns_mac_cb*,int ,int) ;
 int hns_rcb_wait_fbd_clean (int ,int ,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hns_ae_stop(struct hnae_handle *handle)
{
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);


 hns_rcb_wait_fbd_clean(handle->qs, handle->q_num, RCB_INT_FLAG_TX);

 msleep(20);

 hns_mac_stop(mac_cb);

 usleep_range(10000, 20000);

 hns_ae_ring_enable_all(handle, 0);


 hns_rcb_wait_fbd_clean(handle->qs, handle->q_num, RCB_INT_FLAG_RX);

 (void)hns_mac_vm_config_bc_en(mac_cb, 0, 0);
}
