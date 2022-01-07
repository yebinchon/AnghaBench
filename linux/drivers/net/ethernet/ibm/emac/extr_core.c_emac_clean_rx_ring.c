
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emac_instance {int * rx_sg_skb; TYPE_1__* rx_desc; int ** rx_skb; } ;
struct TYPE_2__ {scalar_t__ data_ptr; scalar_t__ ctrl; } ;


 int NUM_RX_BUFF ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static void emac_clean_rx_ring(struct emac_instance *dev)
{
 int i;

 for (i = 0; i < NUM_RX_BUFF; ++i)
  if (dev->rx_skb[i]) {
   dev->rx_desc[i].ctrl = 0;
   dev_kfree_skb(dev->rx_skb[i]);
   dev->rx_skb[i] = ((void*)0);
   dev->rx_desc[i].data_ptr = 0;
  }

 if (dev->rx_sg_skb) {
  dev_kfree_skb(dev->rx_sg_skb);
  dev->rx_sg_skb = ((void*)0);
 }
}
