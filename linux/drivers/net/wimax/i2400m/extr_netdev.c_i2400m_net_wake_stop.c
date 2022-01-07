
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m {int tx_lock; struct sk_buff* wake_tx_skb; int wake_tx_ws; } ;
struct device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_put (struct i2400m*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400m_net_wake_stop(struct i2400m *i2400m)
{
 struct device *dev = i2400m_dev(i2400m);
 struct sk_buff *wake_tx_skb;
 unsigned long flags;

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);




 cancel_work_sync(&i2400m->wake_tx_ws);

 spin_lock_irqsave(&i2400m->tx_lock, flags);
 wake_tx_skb = i2400m->wake_tx_skb;
 i2400m->wake_tx_skb = ((void*)0);
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);

 if (wake_tx_skb) {
  i2400m_put(i2400m);
  kfree_skb(wake_tx_skb);
 }

 d_fnend(3, dev, "(i2400m %p) = void\n", i2400m);
}
