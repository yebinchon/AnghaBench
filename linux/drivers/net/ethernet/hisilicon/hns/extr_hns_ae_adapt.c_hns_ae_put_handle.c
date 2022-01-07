
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae_vf_cb {int dummy; } ;
struct hnae_handle {int q_num; int * qs; } ;
struct TYPE_2__ {scalar_t__ used_by_vf; } ;


 TYPE_1__* hns_ae_get_ring_pair (int ) ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 int kfree (struct hnae_vf_cb*) ;

__attribute__((used)) static void hns_ae_put_handle(struct hnae_handle *handle)
{
 struct hnae_vf_cb *vf_cb = hns_ae_get_vf_cb(handle);
 int i;

 for (i = 0; i < handle->q_num; i++)
  hns_ae_get_ring_pair(handle->qs[i])->used_by_vf = 0;

 kfree(vf_cb);
}
