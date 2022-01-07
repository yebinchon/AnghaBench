
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int rx_lock; int rx_roq_refcount; scalar_t__ rx_reorder; } ;


 int i2400m_report_hook_flush (struct i2400m*) ;
 int i2400m_rx_roq_destroy ;
 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400m_rx_release(struct i2400m *i2400m)
{
 unsigned long flags;

 if (i2400m->rx_reorder) {
  spin_lock_irqsave(&i2400m->rx_lock, flags);
  kref_put(&i2400m->rx_roq_refcount, i2400m_rx_roq_destroy);
  spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 }

 i2400m_report_hook_flush(i2400m);
}
