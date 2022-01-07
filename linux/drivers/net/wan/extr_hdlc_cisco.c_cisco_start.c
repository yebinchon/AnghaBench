
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct cisco_state {TYPE_1__ timer; struct net_device* dev; int lock; scalar_t__ rxseq; scalar_t__ txseq; scalar_t__ up; } ;
typedef int hdlc_device ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int cisco_timer ;
 int * dev_to_hdlc (struct net_device*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cisco_state* state (int *) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void cisco_start(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 struct cisco_state *st = state(hdlc);
 unsigned long flags;

 spin_lock_irqsave(&st->lock, flags);
 st->up = st->txseq = st->rxseq = 0;
 spin_unlock_irqrestore(&st->lock, flags);

 st->dev = dev;
 timer_setup(&st->timer, cisco_timer, 0);
 st->timer.expires = jiffies + HZ;
 add_timer(&st->timer);
}
