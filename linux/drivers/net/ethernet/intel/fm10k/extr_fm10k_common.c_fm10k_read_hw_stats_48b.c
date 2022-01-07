
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct fm10k_hw_stat {scalar_t__ base_h; scalar_t__ base_l; } ;
struct fm10k_hw {int dummy; } ;


 int FM10K_48_BIT_MASK ;
 scalar_t__ fm10k_read_reg (struct fm10k_hw*,scalar_t__) ;

__attribute__((used)) static u64 fm10k_read_hw_stats_48b(struct fm10k_hw *hw, u32 addr,
       struct fm10k_hw_stat *stat)
{
 u32 count_l;
 u32 count_h;
 u32 count_tmp;
 u64 delta;

 count_h = fm10k_read_reg(hw, addr + 1);


 do {
  count_tmp = count_h;
  count_l = fm10k_read_reg(hw, addr);
  count_h = fm10k_read_reg(hw, addr + 1);
 } while (count_h != count_tmp);

 delta = ((u64)(count_h - stat->base_h) << 32) + count_l;
 delta -= stat->base_l;

 return delta & FM10K_48_BIT_MASK;
}
