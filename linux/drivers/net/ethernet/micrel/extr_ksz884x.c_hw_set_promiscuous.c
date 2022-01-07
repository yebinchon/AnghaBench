
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ksz_hw {scalar_t__ enabled; int rx_cfg; } ;


 int DMA_RX_PROMISCUOUS ;
 int hw_start_rx (struct ksz_hw*) ;
 int hw_stop_rx (struct ksz_hw*) ;

__attribute__((used)) static void hw_set_promiscuous(struct ksz_hw *hw, u8 prom)
{

 hw_stop_rx(hw);

 if (prom)
  hw->rx_cfg |= DMA_RX_PROMISCUOUS;
 else
  hw->rx_cfg &= ~DMA_RX_PROMISCUOUS;

 if (hw->enabled)
  hw_start_rx(hw);
}
