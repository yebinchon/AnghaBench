
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct i40e_pf {scalar_t__ service_timer_period; int service_timer; } ;


 struct i40e_pf* from_timer (int ,struct timer_list*,int ) ;
 int i40e_service_event_schedule (struct i40e_pf*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 struct i40e_pf* pf ;
 int round_jiffies (scalar_t__) ;
 int service_timer ;

__attribute__((used)) static void i40e_service_timer(struct timer_list *t)
{
 struct i40e_pf *pf = from_timer(pf, t, service_timer);

 mod_timer(&pf->service_timer,
    round_jiffies(jiffies + pf->service_timer_period));
 i40e_service_event_schedule(pf);
}
