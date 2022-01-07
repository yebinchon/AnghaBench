
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct rtnl_link_stats64 {int dummy; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static void bond_fold_stats(struct rtnl_link_stats64 *_res,
       const struct rtnl_link_stats64 *_new,
       const struct rtnl_link_stats64 *_old)
{
 const u64 *new = (const u64 *)_new;
 const u64 *old = (const u64 *)_old;
 u64 *res = (u64 *)_res;
 int i;

 for (i = 0; i < sizeof(*_res) / sizeof(u64); i++) {
  u64 nv = new[i];
  u64 ov = old[i];
  s64 delta = nv - ov;


  if (((nv | ov) >> 32) == 0)
   delta = (s64)(s32)((u32)nv - (u32)ov);




  if (delta > 0)
   res[i] += delta;
 }
}
