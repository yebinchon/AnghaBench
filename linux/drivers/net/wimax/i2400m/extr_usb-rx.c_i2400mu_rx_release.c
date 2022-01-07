
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct i2400m {int rx_lock; } ;
struct i2400mu {struct task_struct* rx_kthread; struct i2400m i2400m; } ;
struct device {int dummy; } ;


 int d_printf (int,struct device*,char*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int kthread_stop (struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400mu_rx_release(struct i2400mu *i2400mu)
{
 unsigned long flags;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = i2400m_dev(i2400m);
 struct task_struct *kthread;

 spin_lock_irqsave(&i2400m->rx_lock, flags);
 kthread = i2400mu->rx_kthread;
 i2400mu->rx_kthread = ((void*)0);
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 if (kthread)
  kthread_stop(kthread);
 else
  d_printf(1, dev, "RX: kthread had already exited\n");
}
