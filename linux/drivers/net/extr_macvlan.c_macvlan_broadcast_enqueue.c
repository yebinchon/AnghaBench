
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_6__ {int lock; } ;
struct macvlan_port {int bc_work; TYPE_2__ bc_queue; } ;
struct macvlan_dev {int dev; } ;
struct TYPE_7__ {struct macvlan_dev const* src; } ;
struct TYPE_5__ {int rx_dropped; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MACVLAN_BC_QUEUE_LEN ;
 TYPE_4__* MACVLAN_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int atomic_long_inc (int *) ;
 int dev_hold (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int schedule_work (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void macvlan_broadcast_enqueue(struct macvlan_port *port,
          const struct macvlan_dev *src,
          struct sk_buff *skb)
{
 struct sk_buff *nskb;
 int err = -ENOMEM;

 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  goto err;

 MACVLAN_SKB_CB(nskb)->src = src;

 spin_lock(&port->bc_queue.lock);
 if (skb_queue_len(&port->bc_queue) < MACVLAN_BC_QUEUE_LEN) {
  if (src)
   dev_hold(src->dev);
  __skb_queue_tail(&port->bc_queue, nskb);
  err = 0;
 }
 spin_unlock(&port->bc_queue.lock);

 if (err)
  goto free_nskb;

 schedule_work(&port->bc_work);
 return;

free_nskb:
 kfree_skb(nskb);
err:
 atomic_long_inc(&skb->dev->rx_dropped);
}
