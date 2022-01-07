
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int tx_fifo_head; struct e1000_hw hw; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_RCTL_LBM_MAC ;
 int KMRNCTRLSTA ;
 int KMRNCTRLSTA_OPMODE ;
 int KMRNCTRLSTA_OPMODE_1GB_FD_GMII ;
 int RCTL ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static int e1000_set_es2lan_mac_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrlext = er32(CTRL_EXT);
 u32 ctrl = er32(CTRL);




 adapter->tx_fifo_head = ctrlext;


 ctrlext &= ~E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
 ew32(CTRL_EXT, ctrlext);


 ctrl &= ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
 ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX |
   E1000_CTRL_SPD_1000 | E1000_CTRL_FD);
 ew32(CTRL, ctrl);


 ctrl = er32(RCTL);
 ctrl |= E1000_RCTL_LBM_MAC;
 ew32(RCTL, ctrl);




 ew32(KMRNCTRLSTA,
      ((0x1F << 16) | 0x0582));

 return 0;
}
