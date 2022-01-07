
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_pf {int num_alloc_vfs; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static int
ice_determine_res(struct ice_pf *pf, u16 avail_res, u16 max_res, u16 min_res)
{
 bool checked_min_res = 0;
 int res;
 res = max_res;
 while ((res >= min_res) && !checked_min_res) {
  int num_all_res;

  num_all_res = pf->num_alloc_vfs * res;
  if (num_all_res <= avail_res)
   return res;

  if (res == min_res)
   checked_min_res = 1;

  res = DIV_ROUND_UP(res, 2);
 }
 return 0;
}
