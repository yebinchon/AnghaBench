
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_COLLISION_THRESHOLD ;
 int E1000_CT_SHIFT ;
 int E1000_TCTL ;
 int E1000_TCTL_CT ;
 int E1000_TCTL_EN ;
 int E1000_TCTL_PSP ;
 int E1000_TCTL_RTLC ;
 int E1000_TXDCTL (int ) ;
 int igb_config_collision_dist (struct e1000_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

void igb_setup_tctl(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 tctl;


 wr32(E1000_TXDCTL(0), 0);


 tctl = rd32(E1000_TCTL);
 tctl &= ~E1000_TCTL_CT;
 tctl |= E1000_TCTL_PSP | E1000_TCTL_RTLC |
  (E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);

 igb_config_collision_dist(hw);


 tctl |= E1000_TCTL_EN;

 wr32(E1000_TCTL, tctl);
}
