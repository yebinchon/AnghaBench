
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {scalar_t__ ll_state; } ;


 int LL_WAKE_UP_IND ;
 scalar_t__ ST_LL_ASLEEP_TO_AWAKE ;
 scalar_t__ ST_LL_AWAKE ;
 scalar_t__ likely (int) ;
 int pr_err (char*) ;
 int send_ll_cmd (struct st_data_s*,int ) ;

void st_ll_wakeup(struct st_data_s *ll)
{
 if (likely(ll->ll_state != ST_LL_AWAKE)) {
  send_ll_cmd(ll, LL_WAKE_UP_IND);
  ll->ll_state = ST_LL_ASLEEP_TO_AWAKE;
 } else {

  pr_err(" Chip already AWAKE ");
 }
}
