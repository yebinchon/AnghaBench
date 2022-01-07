
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae_vf_cb {TYPE_1__* mac_cb; } ;
struct hnae_queue {int handle; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;


 scalar_t__ HNAE_PORT_SERVICE ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (int ) ;
 int hns_rcb_reset_ring_hw (struct hnae_queue*) ;

__attribute__((used)) static void hns_ae_fini_queue(struct hnae_queue *q)
{
 struct hnae_vf_cb *vf_cb = hns_ae_get_vf_cb(q->handle);

 if (vf_cb->mac_cb->mac_type == HNAE_PORT_SERVICE)
  hns_rcb_reset_ring_hw(q);
}
