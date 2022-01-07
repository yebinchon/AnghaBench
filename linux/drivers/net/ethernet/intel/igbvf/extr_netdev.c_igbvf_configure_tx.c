
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef int u64 ;
typedef int u32 ;
struct igbvf_ring {int count; int dma; int tail; int head; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {int txd_cmd; struct igbvf_ring* tx_ring; struct e1000_hw hw; } ;


 int DCA_TXCTRL (int ) ;
 int DMA_BIT_MASK (int) ;
 int E1000_ADVTXD_DCMD_EOP ;
 int E1000_ADVTXD_DCMD_IFCS ;
 int E1000_ADVTXD_DCMD_RS ;
 int E1000_DCA_TXCTRL_TX_WB_RO_EN ;
 int E1000_TDH (int ) ;
 int E1000_TDT (int ) ;
 int E1000_TXDCTL_QUEUE_ENABLE ;
 int TDBAH (int ) ;
 int TDBAL (int ) ;
 int TDH (int ) ;
 int TDLEN (int ) ;
 int TDT (int ) ;
 int TXDCTL (int ) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void igbvf_configure_tx(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct igbvf_ring *tx_ring = adapter->tx_ring;
 u64 tdba;
 u32 txdctl, dca_txctrl;


 txdctl = er32(TXDCTL(0));
 ew32(TXDCTL(0), txdctl & ~E1000_TXDCTL_QUEUE_ENABLE);
 e1e_flush();
 msleep(10);


 ew32(TDLEN(0), tx_ring->count * sizeof(union e1000_adv_tx_desc));
 tdba = tx_ring->dma;
 ew32(TDBAL(0), (tdba & DMA_BIT_MASK(32)));
 ew32(TDBAH(0), (tdba >> 32));
 ew32(TDH(0), 0);
 ew32(TDT(0), 0);
 tx_ring->head = E1000_TDH(0);
 tx_ring->tail = E1000_TDT(0);





 dca_txctrl = er32(DCA_TXCTRL(0));
 dca_txctrl &= ~E1000_DCA_TXCTRL_TX_WB_RO_EN;
 ew32(DCA_TXCTRL(0), dca_txctrl);


 txdctl |= E1000_TXDCTL_QUEUE_ENABLE;
 ew32(TXDCTL(0), txdctl);


 adapter->txd_cmd = E1000_ADVTXD_DCMD_EOP | E1000_ADVTXD_DCMD_IFCS;


 adapter->txd_cmd |= E1000_ADVTXD_DCMD_RS;
}
