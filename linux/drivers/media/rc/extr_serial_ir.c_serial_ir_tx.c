
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {int dummy; } ;
typedef int s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int lock; int (* send_pulse ) (unsigned int,int ) ;int (* send_space ) () ;} ;


 size_t IR_IRDEO ;
 TYPE_1__* hardware ;
 int ktime_add_us (int ,unsigned int) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 int off () ;
 int on () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 int stub2 (unsigned int,int ) ;
 size_t type ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int serial_ir_tx(struct rc_dev *dev, unsigned int *txbuf,
   unsigned int count)
{
 unsigned long flags;
 ktime_t edge;
 s64 delta;
 int i;

 spin_lock_irqsave(&hardware[type].lock, flags);
 if (type == IR_IRDEO) {

  on();
 }

 edge = ktime_get();
 for (i = 0; i < count; i++) {
  if (i % 2)
   hardware[type].send_space();
  else
   hardware[type].send_pulse(txbuf[i], edge);

  edge = ktime_add_us(edge, txbuf[i]);
  delta = ktime_us_delta(edge, ktime_get());
  if (delta > 25) {
   spin_unlock_irqrestore(&hardware[type].lock, flags);
   usleep_range(delta - 25, delta + 25);
   spin_lock_irqsave(&hardware[type].lock, flags);
  } else if (delta > 0) {
   udelay(delta);
  }
 }
 off();
 spin_unlock_irqrestore(&hardware[type].lock, flags);
 return count;
}
