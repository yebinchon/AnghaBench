
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {int (* increment_heartbeat ) () ;} ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int stub1 () ;
 scalar_t__ time_is_before_eq_jiffies (int ) ;
 int wake_up_interruptible (int *) ;
 int xpc_activate_IRQ_wq ;
 TYPE_2__ xpc_arch_ops ;
 int xpc_hb_check_timeout ;
 int xpc_hb_interval ;
 TYPE_1__ xpc_hb_timer ;

__attribute__((used)) static void
xpc_hb_beater(struct timer_list *unused)
{
 xpc_arch_ops.increment_heartbeat();

 if (time_is_before_eq_jiffies(xpc_hb_check_timeout))
  wake_up_interruptible(&xpc_activate_IRQ_wq);

 xpc_hb_timer.expires = jiffies + (xpc_hb_interval * HZ);
 add_timer(&xpc_hb_timer);
}
