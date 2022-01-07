
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {unsigned int rx_pending; TYPE_1__* hw; struct rx_ring_info* rx_ring; scalar_t__ rx_le; } ;
struct rx_ring_info {int * skb; } ;
struct TYPE_2__ {int pdev; } ;


 int RX_LE_BYTES ;
 int kfree_skb (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int sky2_rx_unmap_skb (int ,struct rx_ring_info*) ;

__attribute__((used)) static void sky2_rx_clean(struct sky2_port *sky2)
{
 unsigned i;

 if (sky2->rx_le)
  memset(sky2->rx_le, 0, RX_LE_BYTES);

 for (i = 0; i < sky2->rx_pending; i++) {
  struct rx_ring_info *re = sky2->rx_ring + i;

  if (re->skb) {
   sky2_rx_unmap_skb(sky2->hw->pdev, re);
   kfree_skb(re->skb);
   re->skb = ((void*)0);
  }
 }
}
