
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hnae_vf_cb {TYPE_1__* mac_cb; } ;
struct hnae_handle {int q_num; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;


 scalar_t__ HNAE_PORT_SERVICE ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 scalar_t__ hns_dsaf_get_regs_count () ;
 scalar_t__ hns_mac_get_regs_count (TYPE_1__*) ;
 int hns_ppe_get_regs_count () ;
 scalar_t__ hns_rcb_get_common_regs_count () ;
 int hns_rcb_get_ring_regs_count () ;

__attribute__((used)) static int hns_ae_get_regs_len(struct hnae_handle *handle)
{
 u32 total_num;
 struct hnae_vf_cb *vf_cb = hns_ae_get_vf_cb(handle);

 total_num = hns_ppe_get_regs_count();
 total_num += hns_rcb_get_common_regs_count();
 total_num += hns_rcb_get_ring_regs_count() * handle->q_num;
 total_num += hns_mac_get_regs_count(vf_cb->mac_cb);

 if (vf_cb->mac_cb->mac_type == HNAE_PORT_SERVICE)
  total_num += hns_dsaf_get_regs_count();

 return total_num;
}
