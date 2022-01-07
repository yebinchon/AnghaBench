
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sixpack {int status; int status1; int led_state; int resync_t; TYPE_2__* tty; scalar_t__ status2; scalar_t__ rx_count_cooked; scalar_t__ rx_count; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* write ) (TYPE_2__*,char*,int) ;} ;


 scalar_t__ SIXP_RESYNC_TIMEOUT ;
 struct sixpack* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int resync_t ;
 struct sixpack* sp ;
 int stub1 (TYPE_2__*,int*,int) ;
 int stub2 (TYPE_2__*,char*,int) ;

__attribute__((used)) static void resync_tnc(struct timer_list *t)
{
 struct sixpack *sp = from_timer(sp, t, resync_t);
 static char resync_cmd = 0xe8;



 sp->rx_count = 0;
 sp->rx_count_cooked = 0;



 sp->status = 1;
 sp->status1 = 1;
 sp->status2 = 0;



 sp->led_state = 0x60;
 sp->tty->ops->write(sp->tty, &sp->led_state, 1);
 sp->tty->ops->write(sp->tty, &resync_cmd, 1);



 mod_timer(&sp->resync_t, jiffies + SIXP_RESYNC_TIMEOUT);
}
