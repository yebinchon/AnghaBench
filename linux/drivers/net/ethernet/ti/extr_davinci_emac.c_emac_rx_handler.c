
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; int protocol; struct net_device* dev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_errors; } ;
struct device {int dummy; } ;
struct net_device {TYPE_1__ stats; struct device dev; } ;
struct emac_priv {int rxchan; } ;


 int ENOMEM ;
 int WARN_ON (int) ;
 int cpdma_chan_submit (int ,struct sk_buff*,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* emac_rx_alloc (struct emac_priv*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ net_ratelimit () ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_rx_err (struct emac_priv*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netif_running (struct net_device*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void emac_rx_handler(void *token, int len, int status)
{
 struct sk_buff *skb = token;
 struct net_device *ndev = skb->dev;
 struct emac_priv *priv = netdev_priv(ndev);
 struct device *emac_dev = &ndev->dev;
 int ret;


 if (unlikely(!netif_running(ndev))) {
  dev_kfree_skb_any(skb);
  return;
 }


 if (status < 0) {
  ndev->stats.rx_errors++;
  goto recycle;
 }


 skb_put(skb, len);
 skb->protocol = eth_type_trans(skb, ndev);
 netif_receive_skb(skb);
 ndev->stats.rx_bytes += len;
 ndev->stats.rx_packets++;


 skb = emac_rx_alloc(priv);
 if (!skb) {
  if (netif_msg_rx_err(priv) && net_ratelimit())
   dev_err(emac_dev, "failed rx buffer alloc\n");
  return;
 }

recycle:
 ret = cpdma_chan_submit(priv->rxchan, skb, skb->data,
   skb_tailroom(skb), 0);

 WARN_ON(ret == -ENOMEM);
 if (unlikely(ret < 0))
  dev_kfree_skb_any(skb);
}
