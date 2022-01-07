
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int lock; int txq; int tx_waitq; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int st_ll_sleep_state (struct st_data_s*,unsigned long) ;
 int st_tx_wakeup (struct st_data_s*) ;

__attribute__((used)) static inline void st_wakeup_ack(struct st_data_s *st_gdata,
 unsigned char cmd)
{
 struct sk_buff *waiting_skb;
 unsigned long flags = 0;

 spin_lock_irqsave(&st_gdata->lock, flags);



 while ((waiting_skb = skb_dequeue(&st_gdata->tx_waitq)))
  skb_queue_tail(&st_gdata->txq, waiting_skb);


 st_ll_sleep_state(st_gdata, (unsigned long)cmd);
 spin_unlock_irqrestore(&st_gdata->lock, flags);


 st_tx_wakeup(st_gdata);
}
