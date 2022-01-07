
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int overrides; } ;


 int FAST_AGING ;
 int mdelay (int) ;
 int sw_cfg_fast_aging (struct ksz_hw*,int) ;

__attribute__((used)) static inline void sw_flush_dyn_mac_table(struct ksz_hw *hw)
{
 if (!(hw->overrides & FAST_AGING)) {
  sw_cfg_fast_aging(hw, 1);
  mdelay(1);
  sw_cfg_fast_aging(hw, 0);
 }
}
