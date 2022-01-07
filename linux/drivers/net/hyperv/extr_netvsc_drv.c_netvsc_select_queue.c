
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device_ops {scalar_t__ (* ndo_select_queue ) (struct net_device*,struct sk_buff*,struct net_device*) ;} ;
struct net_device_context {int vf_netdev; } ;
struct net_device {scalar_t__ real_num_tx_queues; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ slave_dev_queue_mapping; } ;


 scalar_t__ netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 scalar_t__ netvsc_pick_tx (struct net_device*,struct sk_buff*) ;
 TYPE_1__* qdisc_skb_cb (struct sk_buff*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ stub1 (struct net_device*,struct sk_buff*,struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 netvsc_select_queue(struct net_device *ndev, struct sk_buff *skb,
          struct net_device *sb_dev)
{
 struct net_device_context *ndc = netdev_priv(ndev);
 struct net_device *vf_netdev;
 u16 txq;

 rcu_read_lock();
 vf_netdev = rcu_dereference(ndc->vf_netdev);
 if (vf_netdev) {
  const struct net_device_ops *vf_ops = vf_netdev->netdev_ops;

  if (vf_ops->ndo_select_queue)
   txq = vf_ops->ndo_select_queue(vf_netdev, skb, sb_dev);
  else
   txq = netdev_pick_tx(vf_netdev, skb, ((void*)0));





  qdisc_skb_cb(skb)->slave_dev_queue_mapping = txq;
 } else {
  txq = netvsc_pick_tx(ndev, skb);
 }
 rcu_read_unlock();

 while (unlikely(txq >= ndev->real_num_tx_queues))
  txq -= ndev->real_num_tx_queues;

 return txq;
}
