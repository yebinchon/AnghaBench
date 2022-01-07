
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags2; int tx_int_delay; int rx_int_delay; struct e1000_hw hw; } ;


 int E1000_RDTR_FPD ;
 int E1000_TIDV_FPD ;
 int FLAG2_DMA_BURST ;
 int RDTR ;
 int TIDV ;
 int e1e_flush () ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000e_flush_descriptors(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 if (!(adapter->flags2 & FLAG2_DMA_BURST))
  return;


 ew32(TIDV, adapter->tx_int_delay | E1000_TIDV_FPD);
 ew32(RDTR, adapter->rx_int_delay | E1000_RDTR_FPD);


 e1e_flush();




 ew32(TIDV, adapter->tx_int_delay | E1000_TIDV_FPD);
 ew32(RDTR, adapter->rx_int_delay | E1000_RDTR_FPD);


 e1e_flush();
}
