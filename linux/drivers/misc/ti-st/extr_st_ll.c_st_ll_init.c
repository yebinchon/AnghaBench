
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int ll_state; } ;


 int ST_LL_INVALID ;

long st_ll_init(struct st_data_s *ll)
{

 ll->ll_state = ST_LL_INVALID;
 return 0;
}
