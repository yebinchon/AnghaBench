
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ice_res_tracker {scalar_t__ end; scalar_t__* list; } ;


 int EINVAL ;
 scalar_t__ ICE_RES_VALID_BIT ;

int ice_free_res(struct ice_res_tracker *res, u16 index, u16 id)
{
 int count = 0;
 int i;

 if (!res || index >= res->end)
  return -EINVAL;

 id |= ICE_RES_VALID_BIT;
 for (i = index; i < res->end && res->list[i] == id; i++) {
  res->list[i] = 0;
  count++;
 }

 return count;
}
