
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int BIT (int) ;
 int E1000_RCTL_EN ;
 int E1000_RXDCTL_THRESH_UNIT_DESC ;
 int RCTL ;
 int RXDCTL (int ) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void e1000_flush_rx_ring(struct e1000_adapter *adapter)
{
 u32 rctl, rxdctl;
 struct e1000_hw *hw = &adapter->hw;

 rctl = er32(RCTL);
 ew32(RCTL, rctl & ~E1000_RCTL_EN);
 e1e_flush();
 usleep_range(100, 150);

 rxdctl = er32(RXDCTL(0));

 rxdctl &= 0xffffc000;




 rxdctl |= (0x1F | BIT(8) | E1000_RXDCTL_THRESH_UNIT_DESC);

 ew32(RXDCTL(0), rxdctl);

 ew32(RCTL, rctl | E1000_RCTL_EN);
 e1e_flush();
 usleep_range(100, 150);
 ew32(RCTL, rctl & ~E1000_RCTL_EN);
}
