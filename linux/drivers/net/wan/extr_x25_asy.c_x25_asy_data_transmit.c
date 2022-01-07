
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_asy {int lock; int * tty; int dev; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_err (struct net_device*,char*) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int x25_asy_encaps (struct x25_asy*,int ,scalar_t__) ;
 int x25_asy_lock (struct x25_asy*) ;

__attribute__((used)) static void x25_asy_data_transmit(struct net_device *dev, struct sk_buff *skb)
{
 struct x25_asy *sl = netdev_priv(dev);

 spin_lock(&sl->lock);
 if (netif_queue_stopped(sl->dev) || sl->tty == ((void*)0)) {
  spin_unlock(&sl->lock);
  netdev_err(dev, "tbusy drop\n");
  kfree_skb(skb);
  return;
 }

 if (skb != ((void*)0)) {
  x25_asy_lock(sl);
  dev->stats.tx_bytes += skb->len;
  x25_asy_encaps(sl, skb->data, skb->len);
  dev_kfree_skb(skb);
 }
 spin_unlock(&sl->lock);
}
