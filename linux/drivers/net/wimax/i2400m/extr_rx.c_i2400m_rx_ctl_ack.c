
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i2400m {int rx_lock; int msg_completion; struct sk_buff* ack_skb; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;


 int EINPROGRESS ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int complete (int *) ;
 int d_printf (int,struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sk_buff* wimax_msg_alloc (struct wimax_dev*,int *,void const*,size_t,int ) ;

__attribute__((used)) static
void i2400m_rx_ctl_ack(struct i2400m *i2400m,
         const void *payload, size_t size)
{
 struct device *dev = i2400m_dev(i2400m);
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 unsigned long flags;
 struct sk_buff *ack_skb;


 spin_lock_irqsave(&i2400m->rx_lock, flags);
 if (i2400m->ack_skb != ERR_PTR(-EINPROGRESS)) {
  dev_err(dev, "Huh? reply to command with no waiters\n");
  goto error_no_waiter;
 }
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);

 ack_skb = wimax_msg_alloc(wimax_dev, ((void*)0), payload, size, GFP_KERNEL);


 spin_lock_irqsave(&i2400m->rx_lock, flags);
 if (i2400m->ack_skb != ERR_PTR(-EINPROGRESS)) {
  d_printf(1, dev, "Huh? waiter for command reply cancelled\n");
  goto error_waiter_cancelled;
 }
 if (IS_ERR(ack_skb))
  dev_err(dev, "CMD/GET/SET ack: cannot allocate SKB\n");
 i2400m->ack_skb = ack_skb;
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 complete(&i2400m->msg_completion);
 return;

error_waiter_cancelled:
 if (!IS_ERR(ack_skb))
  kfree_skb(ack_skb);
error_no_waiter:
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
}
