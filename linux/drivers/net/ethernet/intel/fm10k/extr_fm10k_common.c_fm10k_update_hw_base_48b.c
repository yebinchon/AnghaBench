
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct fm10k_hw_stat {int base_h; scalar_t__ base_l; } ;



__attribute__((used)) static void fm10k_update_hw_base_48b(struct fm10k_hw_stat *stat, u64 delta)
{
 if (!delta)
  return;


 delta += stat->base_l;
 stat->base_l = (u32)delta;


 stat->base_h += (u32)(delta >> 32);
}
