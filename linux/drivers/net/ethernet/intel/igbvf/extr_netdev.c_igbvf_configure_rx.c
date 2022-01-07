
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
typedef int u64 ;
typedef int u32 ;
struct igbvf_ring {int dma; int count; int tail; int head; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {struct igbvf_ring* rx_ring; struct e1000_hw hw; } ;


 int DMA_BIT_MASK (int) ;
 int E1000_RDH (int ) ;
 int E1000_RDT (int ) ;
 int E1000_RXDCTL_QUEUE_ENABLE ;
 int IGBVF_RX_HTHRESH ;
 int IGBVF_RX_PTHRESH ;
 int IGBVF_RX_WTHRESH ;
 int RDBAH (int ) ;
 int RDBAL (int ) ;
 int RDH (int ) ;
 int RDLEN (int ) ;
 int RDT (int ) ;
 int RXDCTL (int ) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int igbvf_set_rlpml (struct igbvf_adapter*) ;
 int msleep (int) ;

__attribute__((used)) static void igbvf_configure_rx(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct igbvf_ring *rx_ring = adapter->rx_ring;
 u64 rdba;
 u32 rxdctl;


 rxdctl = er32(RXDCTL(0));
 ew32(RXDCTL(0), rxdctl & ~E1000_RXDCTL_QUEUE_ENABLE);
 e1e_flush();
 msleep(10);




 rdba = rx_ring->dma;
 ew32(RDBAL(0), (rdba & DMA_BIT_MASK(32)));
 ew32(RDBAH(0), (rdba >> 32));
 ew32(RDLEN(0), rx_ring->count * sizeof(union e1000_adv_rx_desc));
 rx_ring->head = E1000_RDH(0);
 rx_ring->tail = E1000_RDT(0);
 ew32(RDH(0), 0);
 ew32(RDT(0), 0);

 rxdctl |= E1000_RXDCTL_QUEUE_ENABLE;
 rxdctl &= 0xFFF00000;
 rxdctl |= IGBVF_RX_PTHRESH;
 rxdctl |= IGBVF_RX_HTHRESH << 8;
 rxdctl |= IGBVF_RX_WTHRESH << 16;

 igbvf_set_rlpml(adapter);


 ew32(RXDCTL(0), rxdctl);
}
