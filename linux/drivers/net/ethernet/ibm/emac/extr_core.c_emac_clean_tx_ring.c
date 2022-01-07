
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_dropped; } ;
struct emac_instance {TYPE_2__* tx_desc; TYPE_1__ estats; int ** tx_skb; } ;
struct TYPE_4__ {int ctrl; scalar_t__ data_ptr; } ;


 int MAL_TX_CTRL_READY ;
 int NUM_TX_BUFF ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static void emac_clean_tx_ring(struct emac_instance *dev)
{
 int i;

 for (i = 0; i < NUM_TX_BUFF; ++i) {
  if (dev->tx_skb[i]) {
   dev_kfree_skb(dev->tx_skb[i]);
   dev->tx_skb[i] = ((void*)0);
   if (dev->tx_desc[i].ctrl & MAL_TX_CTRL_READY)
    ++dev->estats.tx_dropped;
  }
  dev->tx_desc[i].ctrl = 0;
  dev->tx_desc[i].data_ptr = 0;
 }
}
