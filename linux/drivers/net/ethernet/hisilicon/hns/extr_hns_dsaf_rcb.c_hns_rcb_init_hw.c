
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_pair_cb {int dummy; } ;


 int RX_RING ;
 int TX_RING ;
 int hns_rcb_ring_init (struct ring_pair_cb*,int ) ;

void hns_rcb_init_hw(struct ring_pair_cb *ring)
{
 hns_rcb_ring_init(ring, RX_RING);
 hns_rcb_ring_init(ring, TX_RING);
}
