
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; int set_lben; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_PFDTXGSWC ;
 int IXGBE_PFDTXGSWC_VT_LBEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_mac_82598EB ;

void ixgbe_disable_rx_generic(struct ixgbe_hw *hw)
{
 u32 rxctrl;

 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 if (rxctrl & IXGBE_RXCTRL_RXEN) {
  if (hw->mac.type != ixgbe_mac_82598EB) {
   u32 pfdtxgswc;

   pfdtxgswc = IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
   if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
    pfdtxgswc &= ~IXGBE_PFDTXGSWC_VT_LBEN;
    IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
    hw->mac.set_lben = 1;
   } else {
    hw->mac.set_lben = 0;
   }
  }
  rxctrl &= ~IXGBE_RXCTRL_RXEN;
  IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
 }
}
