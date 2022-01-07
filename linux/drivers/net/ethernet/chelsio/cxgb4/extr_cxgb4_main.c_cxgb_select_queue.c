
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ protocol; int priority; } ;
struct net_device {int real_num_tx_queues; } ;


 int ETH_P_FCOE ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 scalar_t__ cxgb4_dcb_enabled (struct net_device*) ;
 scalar_t__ htons (int ) ;
 int is_kdump_kernel () ;
 scalar_t__ net_ratelimit () ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ select_queue ;
 int skb_get_rx_queue (struct sk_buff*) ;
 scalar_t__ skb_rx_queue_recorded (struct sk_buff*) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;
 int vlan_get_tag (struct sk_buff*,int*) ;

__attribute__((used)) static u16 cxgb_select_queue(struct net_device *dev, struct sk_buff *skb,
        struct net_device *sb_dev)
{
 int txq;
 if (select_queue) {
  txq = (skb_rx_queue_recorded(skb)
   ? skb_get_rx_queue(skb)
   : smp_processor_id());

  while (unlikely(txq >= dev->real_num_tx_queues))
   txq -= dev->real_num_tx_queues;

  return txq;
 }

 return netdev_pick_tx(dev, skb, ((void*)0)) % dev->real_num_tx_queues;
}
