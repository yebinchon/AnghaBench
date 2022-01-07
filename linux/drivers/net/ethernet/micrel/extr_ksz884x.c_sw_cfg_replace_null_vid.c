
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_SWITCH_CTRL_3_OFFSET ;
 int SWITCH_REPLACE_NULL_VID ;
 int sw_cfg (struct ksz_hw*,int ,int ,int) ;

__attribute__((used)) static void sw_cfg_replace_null_vid(struct ksz_hw *hw, int set)
{
 sw_cfg(hw, KS8842_SWITCH_CTRL_3_OFFSET, SWITCH_REPLACE_NULL_VID, set);
}
