
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {int overrides; scalar_t__ io; } ;


 int FAST_AGING ;
 scalar_t__ KS8842_SWITCH_CTRL_1_OFFSET ;
 scalar_t__ KS8842_SWITCH_CTRL_2_OFFSET ;
 scalar_t__ KS8842_SWITCH_CTRL_3_OFFSET ;
 int NO_EXC_COLLISION_DROP ;
 int SWITCH_AGGR_BACKOFF ;
 int SWITCH_AGING_ENABLE ;
 int SWITCH_FAST_AGING ;
 int SWITCH_FLOW_CTRL ;
 int SWITCH_LINK_AUTO_AGING ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void sw_set_global_ctrl(struct ksz_hw *hw)
{
 u16 data;


 data = readw(hw->io + KS8842_SWITCH_CTRL_3_OFFSET);
 data |= SWITCH_FLOW_CTRL;
 writew(data, hw->io + KS8842_SWITCH_CTRL_3_OFFSET);

 data = readw(hw->io + KS8842_SWITCH_CTRL_1_OFFSET);


 data |= SWITCH_AGGR_BACKOFF;


 data |= SWITCH_AGING_ENABLE;
 data |= SWITCH_LINK_AUTO_AGING;

 if (hw->overrides & FAST_AGING)
  data |= SWITCH_FAST_AGING;
 else
  data &= ~SWITCH_FAST_AGING;
 writew(data, hw->io + KS8842_SWITCH_CTRL_1_OFFSET);

 data = readw(hw->io + KS8842_SWITCH_CTRL_2_OFFSET);


 data |= NO_EXC_COLLISION_DROP;
 writew(data, hw->io + KS8842_SWITCH_CTRL_2_OFFSET);
}
