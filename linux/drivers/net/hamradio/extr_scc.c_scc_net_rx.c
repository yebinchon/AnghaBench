
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct scc_channel {int dev; TYPE_1__ dev_stat; } ;


 int ax25_type_trans (struct sk_buff*,int ) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void scc_net_rx(struct scc_channel *scc, struct sk_buff *skb)
{
 if (skb->len == 0) {
  dev_kfree_skb_irq(skb);
  return;
 }

 scc->dev_stat.rx_packets++;
 scc->dev_stat.rx_bytes += skb->len;

 skb->protocol = ax25_type_trans(skb, scc->dev);

 netif_rx(skb);
}
