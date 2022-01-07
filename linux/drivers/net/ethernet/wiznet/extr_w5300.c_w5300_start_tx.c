
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5300_priv {int dummy; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int S0_CR_SEND ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct w5300_priv*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int tx_queued ;
 int w5300_command (struct w5300_priv*,int ) ;
 int w5300_write_frame (struct w5300_priv*,int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t w5300_start_tx(struct sk_buff *skb, struct net_device *ndev)
{
 struct w5300_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);

 w5300_write_frame(priv, skb->data, skb->len);
 ndev->stats.tx_packets++;
 ndev->stats.tx_bytes += skb->len;
 dev_kfree_skb(skb);
 netif_dbg(priv, tx_queued, ndev, "tx queued\n");

 w5300_command(priv, S0_CR_SEND);

 return NETDEV_TX_OK;
}
