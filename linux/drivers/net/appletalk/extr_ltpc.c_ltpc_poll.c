
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int DEBUG_VERBOSE ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int debug ;
 int del_timer (TYPE_1__*) ;
 int idle (int ) ;
 scalar_t__ jiffies ;
 int ltpc_poll_counter ;
 TYPE_1__ ltpc_timer ;
 int ltpc_timer_dev ;
 int printk (char*) ;

__attribute__((used)) static void ltpc_poll(struct timer_list *unused)
{
 del_timer(&ltpc_timer);

 if(debug & DEBUG_VERBOSE) {
  if (!ltpc_poll_counter) {
   ltpc_poll_counter = 50;
   printk("ltpc poll is alive\n");
  }
  ltpc_poll_counter--;
 }


 idle(ltpc_timer_dev);
 ltpc_timer.expires = jiffies + HZ/20;
 add_timer(&ltpc_timer);
}
