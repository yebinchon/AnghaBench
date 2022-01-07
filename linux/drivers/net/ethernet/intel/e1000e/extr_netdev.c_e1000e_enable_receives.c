
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int E1000_RCTL_EN ;
 int FLAG_RESTART_NOW ;
 int FLAG_RX_NEEDS_RESTART ;
 int RCTL ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000e_enable_receives(struct e1000_adapter *adapter)
{

 if ((adapter->flags & FLAG_RX_NEEDS_RESTART) &&
     (adapter->flags & FLAG_RESTART_NOW)) {
  struct e1000_hw *hw = &adapter->hw;
  u32 rctl = er32(RCTL);

  ew32(RCTL, rctl | E1000_RCTL_EN);
  adapter->flags &= ~FLAG_RESTART_NOW;
 }
}
