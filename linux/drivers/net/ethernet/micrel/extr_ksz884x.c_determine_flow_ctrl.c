
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_port {scalar_t__ force_link; } ;
struct ksz_hw {int overrides; int ksz_switch; } ;


 int PAUSE_FLOW_CTRL ;
 int PHY_AUTO_NEG_ASYM_PAUSE ;
 int PHY_AUTO_NEG_PAUSE ;
 int PHY_AUTO_NEG_SYM_PAUSE ;
 int set_flow_ctrl (struct ksz_hw*,int,int) ;

__attribute__((used)) static void determine_flow_ctrl(struct ksz_hw *hw, struct ksz_port *port,
 u16 local, u16 remote)
{
 int rx;
 int tx;

 if (hw->overrides & PAUSE_FLOW_CTRL)
  return;

 rx = tx = 0;
 if (port->force_link)
  rx = tx = 1;
 if (remote & PHY_AUTO_NEG_SYM_PAUSE) {
  if (local & PHY_AUTO_NEG_SYM_PAUSE) {
   rx = tx = 1;
  } else if ((remote & PHY_AUTO_NEG_ASYM_PAUSE) &&
    (local & PHY_AUTO_NEG_PAUSE) ==
    PHY_AUTO_NEG_ASYM_PAUSE) {
   tx = 1;
  }
 } else if (remote & PHY_AUTO_NEG_ASYM_PAUSE) {
  if ((local & PHY_AUTO_NEG_PAUSE) == PHY_AUTO_NEG_PAUSE)
   rx = 1;
 }
 if (!hw->ksz_switch)
  set_flow_ctrl(hw, rx, tx);
}
