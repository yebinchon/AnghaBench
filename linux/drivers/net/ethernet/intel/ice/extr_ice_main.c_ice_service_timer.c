
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ice_pf {scalar_t__ serv_tmr_period; int serv_tmr; } ;


 struct ice_pf* from_timer (int ,struct timer_list*,int ) ;
 int ice_service_task_schedule (struct ice_pf*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 struct ice_pf* pf ;
 int round_jiffies (scalar_t__) ;
 int serv_tmr ;

__attribute__((used)) static void ice_service_timer(struct timer_list *t)
{
 struct ice_pf *pf = from_timer(pf, t, serv_tmr);

 mod_timer(&pf->serv_tmr, round_jiffies(pf->serv_tmr_period + jiffies));
 ice_service_task_schedule(pf);
}
