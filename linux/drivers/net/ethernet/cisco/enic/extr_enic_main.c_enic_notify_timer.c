
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct enic {int notify_timer; } ;


 scalar_t__ ENIC_NOTIFY_TIMER_PERIOD ;
 struct enic* enic ;
 int enic_notify_check (struct enic*) ;
 struct enic* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int notify_timer ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void enic_notify_timer(struct timer_list *t)
{
 struct enic *enic = from_timer(enic, t, notify_timer);

 enic_notify_check(enic);

 mod_timer(&enic->notify_timer,
  round_jiffies(jiffies + ENIC_NOTIFY_TIMER_PERIOD));
}
