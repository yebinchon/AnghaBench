
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_res_tracker {int end; int* list; } ;


 int ENOMEM ;
 int ICE_RES_VALID_BIT ;

__attribute__((used)) static int ice_search_res(struct ice_res_tracker *res, u16 needed, u16 id)
{
 int start = 0, end = 0;

 if (needed > res->end)
  return -ENOMEM;

 id |= ICE_RES_VALID_BIT;

 do {

  if (res->list[end++] & ICE_RES_VALID_BIT) {
   start = end;
   if ((start + needed) > res->end)
    break;
  }

  if (end == (start + needed)) {
   int i = start;


   while (i != end)
    res->list[i++] = id;

   return start;
  }
 } while (end < res->end);

 return -ENOMEM;
}
