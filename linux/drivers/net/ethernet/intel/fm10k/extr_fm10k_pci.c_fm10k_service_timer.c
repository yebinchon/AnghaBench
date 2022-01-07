
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fm10k_intfc {int service_timer; } ;


 int HZ ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;
 struct fm10k_intfc* from_timer (int ,struct timer_list*,int ) ;
 struct fm10k_intfc* interface ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int service_timer ;

__attribute__((used)) static void fm10k_service_timer(struct timer_list *t)
{
 struct fm10k_intfc *interface = from_timer(interface, t,
         service_timer);


 mod_timer(&interface->service_timer, (HZ * 2) + jiffies);

 fm10k_service_event_schedule(interface);
}
