
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct ntb_netdev {int qp; } ;
struct net_device {int mtu; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_HLEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int ntb_transport_link_down (int ) ;
 int ntb_transport_link_up (int ) ;
 int ntb_transport_max_size (int ) ;
 int ntb_transport_rx_enqueue (int ,struct sk_buff*,int ,int) ;
 struct sk_buff* ntb_transport_rx_remove (int ,int*) ;

__attribute__((used)) static int ntb_netdev_change_mtu(struct net_device *ndev, int new_mtu)
{
 struct ntb_netdev *dev = netdev_priv(ndev);
 struct sk_buff *skb;
 int len, rc;

 if (new_mtu > ntb_transport_max_size(dev->qp) - ETH_HLEN)
  return -EINVAL;

 if (!netif_running(ndev)) {
  ndev->mtu = new_mtu;
  return 0;
 }


 ntb_transport_link_down(dev->qp);

 if (ndev->mtu < new_mtu) {
  int i;

  for (i = 0; (skb = ntb_transport_rx_remove(dev->qp, &len)); i++)
   dev_kfree_skb(skb);

  for (; i; i--) {
   skb = netdev_alloc_skb(ndev, new_mtu + ETH_HLEN);
   if (!skb) {
    rc = -ENOMEM;
    goto err;
   }

   rc = ntb_transport_rx_enqueue(dev->qp, skb, skb->data,
            new_mtu + ETH_HLEN);
   if (rc) {
    dev_kfree_skb(skb);
    goto err;
   }
  }
 }

 ndev->mtu = new_mtu;

 ntb_transport_link_up(dev->qp);

 return 0;

err:
 ntb_transport_link_down(dev->qp);

 while ((skb = ntb_transport_rx_remove(dev->qp, &len)))
  dev_kfree_skb(skb);

 netdev_err(ndev, "Error changing MTU, device inoperable\n");
 return rc;
}
