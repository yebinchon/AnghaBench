
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac_dma_ring {int * slots; scalar_t__ end; scalar_t__ start; scalar_t__ unaligned; int dma_base; scalar_t__ mmio_base; } ;
struct bgmac {struct bgmac_dma_ring* rx_ring; struct bgmac_dma_ring* tx_ring; } ;


 scalar_t__ BGMAC_DMA_RX_RINGHI ;
 scalar_t__ BGMAC_DMA_RX_RINGLO ;
 scalar_t__ BGMAC_DMA_TX_RINGHI ;
 scalar_t__ BGMAC_DMA_TX_RINGLO ;
 int BGMAC_MAX_RX_RINGS ;
 int BGMAC_MAX_TX_RINGS ;
 int BGMAC_RX_RING_SLOTS ;
 int bgmac_dma_cleanup (struct bgmac*) ;
 int bgmac_dma_rx_enable (struct bgmac*,struct bgmac_dma_ring*) ;
 int bgmac_dma_rx_setup_desc (struct bgmac*,struct bgmac_dma_ring*,int) ;
 int bgmac_dma_rx_skb_for_slot (struct bgmac*,int *) ;
 int bgmac_dma_rx_update_index (struct bgmac*,struct bgmac_dma_ring*) ;
 int bgmac_dma_tx_enable (struct bgmac*,struct bgmac_dma_ring*) ;
 int bgmac_write (struct bgmac*,scalar_t__,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int bgmac_dma_init(struct bgmac *bgmac)
{
 struct bgmac_dma_ring *ring;
 int i, err;

 for (i = 0; i < BGMAC_MAX_TX_RINGS; i++) {
  ring = &bgmac->tx_ring[i];

  if (!ring->unaligned)
   bgmac_dma_tx_enable(bgmac, ring);
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGLO,
       lower_32_bits(ring->dma_base));
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGHI,
       upper_32_bits(ring->dma_base));
  if (ring->unaligned)
   bgmac_dma_tx_enable(bgmac, ring);

  ring->start = 0;
  ring->end = 0;
 }

 for (i = 0; i < BGMAC_MAX_RX_RINGS; i++) {
  int j;

  ring = &bgmac->rx_ring[i];

  if (!ring->unaligned)
   bgmac_dma_rx_enable(bgmac, ring);
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGLO,
       lower_32_bits(ring->dma_base));
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGHI,
       upper_32_bits(ring->dma_base));
  if (ring->unaligned)
   bgmac_dma_rx_enable(bgmac, ring);

  ring->start = 0;
  ring->end = 0;
  for (j = 0; j < BGMAC_RX_RING_SLOTS; j++) {
   err = bgmac_dma_rx_skb_for_slot(bgmac, &ring->slots[j]);
   if (err)
    goto error;

   bgmac_dma_rx_setup_desc(bgmac, ring, j);
  }

  bgmac_dma_rx_update_index(bgmac, ring);
 }

 return 0;

error:
 bgmac_dma_cleanup(bgmac);
 return err;
}
