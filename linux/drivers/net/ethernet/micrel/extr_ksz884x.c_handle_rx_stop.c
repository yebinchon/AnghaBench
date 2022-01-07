
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int rx_stop; int rx_cfg; int intr_mask; scalar_t__ enabled; } ;


 int DMA_RX_ENABLE ;
 int KS884X_INT_RX_STOPPED ;
 int hw_start_rx (struct ksz_hw*) ;

__attribute__((used)) static inline void handle_rx_stop(struct ksz_hw *hw)
{

 if (0 == hw->rx_stop)
  hw->intr_mask &= ~KS884X_INT_RX_STOPPED;
 else if (hw->rx_stop > 1) {
  if (hw->enabled && (hw->rx_cfg & DMA_RX_ENABLE)) {
   hw_start_rx(hw);
  } else {
   hw->intr_mask &= ~KS884X_INT_RX_STOPPED;
   hw->rx_stop = 0;
  }
 } else

  hw->rx_stop++;
}
