
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union igc_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u64 ;
typedef int u32 ;
struct igc_rx_buffer {int dummy; } ;
struct igc_ring {int reg_idx; int dma; int count; int rx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ tail; } ;
struct igc_hw {int dummy; } ;
struct igc_adapter {scalar_t__ io_addr; struct igc_hw hw; } ;


 int IGC_RDBAH (int) ;
 int IGC_RDBAL (int) ;
 int IGC_RDH (int) ;
 int IGC_RDLEN (int) ;
 scalar_t__ IGC_RDT (int) ;
 int IGC_RXBUFFER_2048 ;
 int IGC_RXBUFFER_3072 ;
 int IGC_RXDCTL (int) ;
 int IGC_RXDCTL_QUEUE_ENABLE ;
 union igc_adv_rx_desc* IGC_RX_DESC (struct igc_ring*,int ) ;
 int IGC_RX_HDR_LEN ;
 int IGC_RX_HTHRESH ;
 int IGC_RX_PTHRESH ;
 int IGC_RX_WTHRESH ;
 int IGC_SRRCTL (int) ;
 int IGC_SRRCTL_BSIZEHDRSIZE_SHIFT ;
 int IGC_SRRCTL_BSIZEPKT_SHIFT ;
 int IGC_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int memset (int ,int ,int) ;
 scalar_t__ ring_uses_large_buffer (struct igc_ring*) ;
 int wr32 (int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void igc_configure_rx_ring(struct igc_adapter *adapter,
      struct igc_ring *ring)
{
 struct igc_hw *hw = &adapter->hw;
 union igc_adv_rx_desc *rx_desc;
 int reg_idx = ring->reg_idx;
 u32 srrctl = 0, rxdctl = 0;
 u64 rdba = ring->dma;


 wr32(IGC_RXDCTL(reg_idx), 0);


 wr32(IGC_RDBAL(reg_idx),
      rdba & 0x00000000ffffffffULL);
 wr32(IGC_RDBAH(reg_idx), rdba >> 32);
 wr32(IGC_RDLEN(reg_idx),
      ring->count * sizeof(union igc_adv_rx_desc));


 ring->tail = adapter->io_addr + IGC_RDT(reg_idx);
 wr32(IGC_RDH(reg_idx), 0);
 writel(0, ring->tail);


 ring->next_to_clean = 0;
 ring->next_to_use = 0;


 srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
 if (ring_uses_large_buffer(ring))
  srrctl |= IGC_RXBUFFER_3072 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 else
  srrctl |= IGC_RXBUFFER_2048 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;

 wr32(IGC_SRRCTL(reg_idx), srrctl);

 rxdctl |= IGC_RX_PTHRESH;
 rxdctl |= IGC_RX_HTHRESH << 8;
 rxdctl |= IGC_RX_WTHRESH << 16;


 memset(ring->rx_buffer_info, 0,
        sizeof(struct igc_rx_buffer) * ring->count);


 rx_desc = IGC_RX_DESC(ring, 0);
 rx_desc->wb.upper.length = 0;


 rxdctl |= IGC_RXDCTL_QUEUE_ENABLE;

 wr32(IGC_RXDCTL(reg_idx), rxdctl);
}
