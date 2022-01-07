
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int tx_packets; int tx_bytes; } ;
struct net_device {int irq; TYPE_1__ stats; } ;
struct ks_net {int statelock; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int ks_disable_int (struct ks_net*) ;
 int ks_enable_int (struct ks_net*) ;
 scalar_t__ ks_tx_fifo_space (struct ks_net*) ;
 int ks_write_qmu (struct ks_net*,int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 struct ks_net* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static netdev_tx_t ks_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 netdev_tx_t retv = NETDEV_TX_OK;
 struct ks_net *ks = netdev_priv(netdev);

 disable_irq(netdev->irq);
 ks_disable_int(ks);
 spin_lock(&ks->statelock);





 if (likely(ks_tx_fifo_space(ks) >= skb->len + 12)) {
  ks_write_qmu(ks, skb->data, skb->len);

  netdev->stats.tx_bytes += skb->len;
  netdev->stats.tx_packets++;
  dev_kfree_skb(skb);
 } else
  retv = NETDEV_TX_BUSY;
 spin_unlock(&ks->statelock);
 ks_enable_int(ks);
 enable_irq(netdev->irq);
 return retv;
}
