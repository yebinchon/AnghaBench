
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct ntb_netdev {int qp; int tx_timer; } ;
struct net_device {scalar_t__ mtu; } ;


 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int NTB_RXQ_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int ntb_netdev_tx_timer ;
 int ntb_transport_link_up (int ) ;
 int ntb_transport_rx_enqueue (int ,struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* ntb_transport_rx_remove (int ,int*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ntb_netdev_open(struct net_device *ndev)
{
 struct ntb_netdev *dev = netdev_priv(ndev);
 struct sk_buff *skb;
 int rc, i, len;


 for (i = 0; i < NTB_RXQ_SIZE; i++) {
  skb = netdev_alloc_skb(ndev, ndev->mtu + ETH_HLEN);
  if (!skb) {
   rc = -ENOMEM;
   goto err;
  }

  rc = ntb_transport_rx_enqueue(dev->qp, skb, skb->data,
           ndev->mtu + ETH_HLEN);
  if (rc) {
   dev_kfree_skb(skb);
   goto err;
  }
 }

 timer_setup(&dev->tx_timer, ntb_netdev_tx_timer, 0);

 netif_carrier_off(ndev);
 ntb_transport_link_up(dev->qp);
 netif_start_queue(ndev);

 return 0;

err:
 while ((skb = ntb_transport_rx_remove(dev->qp, &len)))
  dev_kfree_skb(skb);
 return rc;
}
