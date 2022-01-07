
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {unsigned long ll_state; } ;


 int pr_debug (char*,unsigned long) ;

unsigned long st_ll_getstate(struct st_data_s *ll)
{
 pr_debug(" returning state %ld", ll->ll_state);
 return ll->ll_state;
}
