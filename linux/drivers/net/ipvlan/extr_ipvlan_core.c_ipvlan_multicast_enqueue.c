
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; TYPE_2__* dev; } ;
struct TYPE_5__ {int lock; } ;
struct ipvl_port {TYPE_1__ backlog; int wq; } ;
struct TYPE_7__ {int tx_pkt; } ;
struct TYPE_6__ {int rx_dropped; } ;


 int ETH_P_PAUSE ;
 scalar_t__ IPVLAN_QBACKLOG_LIMIT ;
 TYPE_4__* IPVL_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int atomic_long_inc (int *) ;
 int dev_hold (TYPE_2__*) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int schedule_work (int *) ;
 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipvlan_multicast_enqueue(struct ipvl_port *port,
         struct sk_buff *skb, bool tx_pkt)
{
 if (skb->protocol == htons(ETH_P_PAUSE)) {
  kfree_skb(skb);
  return;
 }






 IPVL_SKB_CB(skb)->tx_pkt = tx_pkt;

 spin_lock(&port->backlog.lock);
 if (skb_queue_len(&port->backlog) < IPVLAN_QBACKLOG_LIMIT) {
  if (skb->dev)
   dev_hold(skb->dev);
  __skb_queue_tail(&port->backlog, skb);
  spin_unlock(&port->backlog.lock);
  schedule_work(&port->wq);
 } else {
  spin_unlock(&port->backlog.lock);
  atomic_long_inc(&skb->dev->rx_dropped);
  kfree_skb(skb);
 }
}
