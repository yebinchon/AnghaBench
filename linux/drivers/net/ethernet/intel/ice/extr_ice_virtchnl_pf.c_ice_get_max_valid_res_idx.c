
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_res_tracker {int num_entries; int* list; } ;


 int EINVAL ;
 int ICE_RES_VALID_BIT ;

__attribute__((used)) static int ice_get_max_valid_res_idx(struct ice_res_tracker *res)
{
 int i;

 if (!res)
  return -EINVAL;

 for (i = res->num_entries - 1; i >= 0; i--)
  if (res->list[i] & ICE_RES_VALID_BIT)
   return i;

 return 0;
}
