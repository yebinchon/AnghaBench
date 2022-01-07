
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct channel_data {TYPE_2__* netdev; int * tx_skb; int name; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; int tx_aborted_errors; int tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int dev_consume_skb_irq (int *) ;
 int netif_wake_queue (TYPE_2__*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int cosa_net_tx_done(struct channel_data *chan, int size)
{
 if (!chan->tx_skb) {
  pr_warn("%s: tx_done with empty skb!\n", chan->name);
  chan->netdev->stats.tx_errors++;
  chan->netdev->stats.tx_aborted_errors++;
  return 1;
 }
 dev_consume_skb_irq(chan->tx_skb);
 chan->tx_skb = ((void*)0);
 chan->netdev->stats.tx_packets++;
 chan->netdev->stats.tx_bytes += size;
 netif_wake_queue(chan->netdev);
 return 1;
}
