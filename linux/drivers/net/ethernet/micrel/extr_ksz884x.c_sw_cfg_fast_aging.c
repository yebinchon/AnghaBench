
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_SWITCH_CTRL_1_OFFSET ;
 int SWITCH_FAST_AGING ;
 int sw_cfg (struct ksz_hw*,int ,int ,int) ;

__attribute__((used)) static inline void sw_cfg_fast_aging(struct ksz_hw *hw, int set)
{
 sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET, SWITCH_FAST_AGING, set);
}
