
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
struct ring_pair_cb {TYPE_1__ q; } ;


 int RX_RING ;
 int TX_RING ;
 int hns_rcb_ring_get_cfg (TYPE_1__*,int ) ;

__attribute__((used)) static void hns_rcb_ring_pair_get_cfg(struct ring_pair_cb *ring_pair_cb)
{
 ring_pair_cb->q.handle = ((void*)0);

 hns_rcb_ring_get_cfg(&ring_pair_cb->q, RX_RING);
 hns_rcb_ring_get_cfg(&ring_pair_cb->q, TX_RING);
}
