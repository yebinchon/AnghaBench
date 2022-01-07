
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sixpack {int slottime; int status1; unsigned char persistence; int led_state; int tx_enable; int* xbuff; int status2; int xleft; int xhead; int tx_t; TYPE_2__* tty; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* write ) (TYPE_2__*,int*,int) ;} ;


 int HZ ;
 int SIXP_DCD_MASK ;
 struct sixpack* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct sixpack* sp ;
 int stub1 (TYPE_2__*,int*,int) ;
 int stub2 (TYPE_2__*,int*,int) ;
 int stub3 (TYPE_2__*,int*,int) ;
 int tx_t ;

__attribute__((used)) static void sp_xmit_on_air(struct timer_list *t)
{
 struct sixpack *sp = from_timer(sp, t, tx_t);
 int actual, when = sp->slottime;
 static unsigned char random;

 random = random * 17 + 41;

 if (((sp->status1 & SIXP_DCD_MASK) == 0) && (random < sp->persistence)) {
  sp->led_state = 0x70;
  sp->tty->ops->write(sp->tty, &sp->led_state, 1);
  sp->tx_enable = 1;
  actual = sp->tty->ops->write(sp->tty, sp->xbuff, sp->status2);
  sp->xleft -= actual;
  sp->xhead += actual;
  sp->led_state = 0x60;
  sp->tty->ops->write(sp->tty, &sp->led_state, 1);
  sp->status2 = 0;
 } else
  mod_timer(&sp->tx_t, jiffies + ((when + 1) * HZ) / 100);
}
