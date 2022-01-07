
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_SWITCH_CTRL_7_OFFSET ;
 int port_cfg_shift (struct ksz_hw*,int,int ,int ,int) ;

__attribute__((used)) static inline void sw_cfg_unk_def_port(struct ksz_hw *hw, int port, int set)
{
 port_cfg_shift(hw, port, KS8842_SWITCH_CTRL_7_OFFSET, 0, set);
}
