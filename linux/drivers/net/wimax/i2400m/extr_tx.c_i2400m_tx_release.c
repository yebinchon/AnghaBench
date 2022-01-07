
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int tx_lock; int * tx_buf; } ;


 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400m_tx_release(struct i2400m *i2400m)
{
 unsigned long flags;
 spin_lock_irqsave(&i2400m->tx_lock, flags);
 kfree(i2400m->tx_buf);
 i2400m->tx_buf = ((void*)0);
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);
}
