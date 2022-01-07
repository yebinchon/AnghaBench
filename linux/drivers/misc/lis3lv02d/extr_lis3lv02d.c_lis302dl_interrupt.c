
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int wake_thread; int async_queue; int misc_wait; int count; int misc_opened; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int POLL_IN ;
 int SIGIO ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kill_fasync (int *,int ,int ) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t lis302dl_interrupt(int irq, void *data)
{
 struct lis3lv02d *lis3 = data;

 if (!test_bit(0, &lis3->misc_opened))
  goto out;






 atomic_inc(&lis3->count);

 wake_up_interruptible(&lis3->misc_wait);
 kill_fasync(&lis3->async_queue, SIGIO, POLL_IN);
out:
 if (atomic_read(&lis3->wake_thread))
  return IRQ_WAKE_THREAD;
 return IRQ_HANDLED;
}
