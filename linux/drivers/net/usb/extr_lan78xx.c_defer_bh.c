
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct skb_data {int state; } ;
struct sk_buff_head {int lock; } ;
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_3__ {int lock; } ;
struct lan78xx_net {TYPE_1__ done; int bh; } ;
typedef enum skb_state { ____Placeholder_skb_state } skb_state ;


 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int skb_queue_len (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static enum skb_state defer_bh(struct lan78xx_net *dev, struct sk_buff *skb,
          struct sk_buff_head *list, enum skb_state state)
{
 unsigned long flags;
 enum skb_state old_state;
 struct skb_data *entry = (struct skb_data *)skb->cb;

 spin_lock_irqsave(&list->lock, flags);
 old_state = entry->state;
 entry->state = state;

 __skb_unlink(skb, list);
 spin_unlock(&list->lock);
 spin_lock(&dev->done.lock);

 __skb_queue_tail(&dev->done, skb);
 if (skb_queue_len(&dev->done) == 1)
  tasklet_schedule(&dev->bh);
 spin_unlock_irqrestore(&dev->done.lock, flags);

 return old_state;
}
