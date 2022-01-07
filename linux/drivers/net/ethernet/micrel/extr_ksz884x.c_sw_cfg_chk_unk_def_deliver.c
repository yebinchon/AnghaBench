
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_SWITCH_CTRL_7_OFFSET ;
 int SWITCH_UNK_DEF_PORT_ENABLE ;
 int sw_chk (struct ksz_hw*,int ,int ) ;

__attribute__((used)) static inline int sw_cfg_chk_unk_def_deliver(struct ksz_hw *hw)
{
 return sw_chk(hw, KS8842_SWITCH_CTRL_7_OFFSET,
  SWITCH_UNK_DEF_PORT_ENABLE);
}
