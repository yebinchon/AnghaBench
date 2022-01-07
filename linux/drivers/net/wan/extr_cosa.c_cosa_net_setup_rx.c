
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct channel_data {int * rx_skb; TYPE_2__* netdev; int name; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int * dev_alloc_skb (int) ;
 int kfree_skb (int *) ;
 int netif_trans_update (TYPE_2__*) ;
 int pr_notice (char*,int ) ;
 char* skb_put (int *,int) ;

__attribute__((used)) static char *cosa_net_setup_rx(struct channel_data *chan, int size)
{




 kfree_skb(chan->rx_skb);
 chan->rx_skb = dev_alloc_skb(size);
 if (chan->rx_skb == ((void*)0)) {
  pr_notice("%s: Memory squeeze, dropping packet\n", chan->name);
  chan->netdev->stats.rx_dropped++;
  return ((void*)0);
 }
 netif_trans_update(chan->netdev);
 return skb_put(chan->rx_skb, size);
}
