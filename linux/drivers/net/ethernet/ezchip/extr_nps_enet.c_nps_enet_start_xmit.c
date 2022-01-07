
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nps_enet_priv {struct sk_buff* tx_skb; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nps_enet_send_frame (struct net_device*,struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t nps_enet_start_xmit(struct sk_buff *skb,
           struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);


 netif_stop_queue(ndev);

 priv->tx_skb = skb;




 wmb();

 nps_enet_send_frame(ndev, skb);

 return NETDEV_TX_OK;
}
