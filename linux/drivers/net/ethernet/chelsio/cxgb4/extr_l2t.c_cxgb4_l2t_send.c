
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct l2t_entry {int state; int lock; int arpq; int neigh; } ;
struct adapter {int dummy; } ;






 int arpq_enqueue (struct l2t_entry*,struct sk_buff*) ;
 int neigh_event_send (int ,int *) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;
 int write_l2e (struct adapter*,struct l2t_entry*,int) ;

int cxgb4_l2t_send(struct net_device *dev, struct sk_buff *skb,
     struct l2t_entry *e)
{
 struct adapter *adap = netdev2adap(dev);

again:
 switch (e->state) {
 case 130:
  neigh_event_send(e->neigh, ((void*)0));
  spin_lock_bh(&e->lock);
  if (e->state == 130)
   e->state = 128;
  spin_unlock_bh(&e->lock);

 case 128:
  return t4_ofld_send(adap, skb);
 case 131:
 case 129:
  spin_lock_bh(&e->lock);
  if (e->state != 129 &&
      e->state != 131) {
   spin_unlock_bh(&e->lock);
   goto again;
  }
  arpq_enqueue(e, skb);
  spin_unlock_bh(&e->lock);

  if (e->state == 131 &&
      !neigh_event_send(e->neigh, ((void*)0))) {
   spin_lock_bh(&e->lock);
   if (e->state == 131 &&
       !skb_queue_empty(&e->arpq))
    write_l2e(adap, e, 1);
   spin_unlock_bh(&e->lock);
  }
 }
 return 0;
}
