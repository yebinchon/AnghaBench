
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct cadet {int* rdsbuf; size_t rdsin; int rdsout; TYPE_1__ readtimer; int read_queue; int lock; scalar_t__ io; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ cadet_has_rds_data (struct cadet*) ;
 struct cadet* dev ;
 struct cadet* from_timer (int ,struct timer_list*,int ) ;
 int inb (scalar_t__) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;
 int pr_err (char*) ;
 int readtimer ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cadet_handler(struct timer_list *t)
{
 struct cadet *dev = from_timer(dev, t, readtimer);


 if (mutex_trylock(&dev->lock)) {
  outb(0x3, dev->io);
  if ((inb(dev->io + 1) & 0x20) != 0)
   pr_err("cadet: RDS fifo overflow\n");
  outb(0x80, dev->io);

  while ((inb(dev->io) & 0x80) != 0) {
   dev->rdsbuf[dev->rdsin] = inb(dev->io + 1);
   if (dev->rdsin + 1 != dev->rdsout)
    dev->rdsin++;
  }
  mutex_unlock(&dev->lock);
 }




 if (cadet_has_rds_data(dev))
  wake_up_interruptible(&dev->read_queue);




 dev->readtimer.expires = jiffies + msecs_to_jiffies(50);
 add_timer(&dev->readtimer);
}
