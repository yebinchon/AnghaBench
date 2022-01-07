
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__* data; int len; } ;
struct net_device {int dummy; } ;
struct baycom_state {struct sk_buff* skb; } ;


 int ETH_P_IP ;
 int HDLCDRV_MAXFLEN ;
 int NETDEV_TX_OK ;
 int ax25_ip_xmit (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int do_kiss_params (struct baycom_state*,scalar_t__*,int) ;
 scalar_t__ htons (int ) ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int baycom_send_packet(struct sk_buff *skb, struct net_device *dev)
{
 struct baycom_state *bc = netdev_priv(dev);

 if (skb->protocol == htons(ETH_P_IP))
  return ax25_ip_xmit(skb);

 if (skb->data[0] != 0) {
  do_kiss_params(bc, skb->data, skb->len);
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 if (bc->skb) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 if (skb->len >= HDLCDRV_MAXFLEN+1 || skb->len < 3) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 netif_stop_queue(dev);
 bc->skb = skb;
 return NETDEV_TX_OK;
}
