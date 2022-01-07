
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_SWITCH_CTRL_7_OFFSET ;
 int SWITCH_UNK_DEF_PORT_ENABLE ;
 int sw_cfg (struct ksz_hw*,int ,int ,int) ;

__attribute__((used)) static inline void sw_cfg_unk_def_deliver(struct ksz_hw *hw, int set)
{
 sw_cfg(hw, KS8842_SWITCH_CTRL_7_OFFSET,
  SWITCH_UNK_DEF_PORT_ENABLE, set);
}
