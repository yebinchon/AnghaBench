
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;
struct bgmac_dma_ring {void* index_base; int dma_base; void* unaligned; int mmio_base; void* cpu_base; } ;
struct bgmac_dma_desc {int dummy; } ;
struct bgmac {int feature_flags; int dev; struct bgmac_dma_ring* rx_ring; struct bgmac_dma_ring* tx_ring; struct device* dma_dev; } ;


 int ARRAY_SIZE (int const*) ;
 int BCMA_IOST ;
 int BCMA_IOST_DMA64 ;




 int BGMAC_DMA_RING_RX ;
 int BGMAC_DMA_RING_TX ;
 int BGMAC_FEAT_IDM_MASK ;
 int BGMAC_MAX_RX_RINGS ;
 int BGMAC_MAX_TX_RINGS ;
 int BGMAC_RX_RING_SLOTS ;
 int BGMAC_TX_RING_SLOTS ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int bgmac_dma_free (struct bgmac*) ;
 void* bgmac_dma_unaligned (struct bgmac*,struct bgmac_dma_ring*,int ) ;
 int bgmac_idm_read (struct bgmac*,int ) ;
 int dev_err (int ,char*,...) ;
 void* dma_alloc_coherent (struct device*,int,int *,int ) ;
 void* lower_32_bits (int ) ;

__attribute__((used)) static int bgmac_dma_alloc(struct bgmac *bgmac)
{
 struct device *dma_dev = bgmac->dma_dev;
 struct bgmac_dma_ring *ring;
 static const u16 ring_base[] = { 131, 130,
      129, 128, };
 int size;
 int i;

 BUILD_BUG_ON(BGMAC_MAX_TX_RINGS > ARRAY_SIZE(ring_base));
 BUILD_BUG_ON(BGMAC_MAX_RX_RINGS > ARRAY_SIZE(ring_base));

 if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK)) {
  if (!(bgmac_idm_read(bgmac, BCMA_IOST) & BCMA_IOST_DMA64)) {
   dev_err(bgmac->dev, "Core does not report 64-bit DMA\n");
   return -ENOTSUPP;
  }
 }

 for (i = 0; i < BGMAC_MAX_TX_RINGS; i++) {
  ring = &bgmac->tx_ring[i];
  ring->mmio_base = ring_base[i];


  size = BGMAC_TX_RING_SLOTS * sizeof(struct bgmac_dma_desc);
  ring->cpu_base = dma_alloc_coherent(dma_dev, size,
          &ring->dma_base,
          GFP_KERNEL);
  if (!ring->cpu_base) {
   dev_err(bgmac->dev, "Allocation of TX ring 0x%X failed\n",
    ring->mmio_base);
   goto err_dma_free;
  }

  ring->unaligned = bgmac_dma_unaligned(bgmac, ring,
            BGMAC_DMA_RING_TX);
  if (ring->unaligned)
   ring->index_base = lower_32_bits(ring->dma_base);
  else
   ring->index_base = 0;


 }

 for (i = 0; i < BGMAC_MAX_RX_RINGS; i++) {
  ring = &bgmac->rx_ring[i];
  ring->mmio_base = ring_base[i];


  size = BGMAC_RX_RING_SLOTS * sizeof(struct bgmac_dma_desc);
  ring->cpu_base = dma_alloc_coherent(dma_dev, size,
          &ring->dma_base,
          GFP_KERNEL);
  if (!ring->cpu_base) {
   dev_err(bgmac->dev, "Allocation of RX ring 0x%X failed\n",
    ring->mmio_base);
   goto err_dma_free;
  }

  ring->unaligned = bgmac_dma_unaligned(bgmac, ring,
            BGMAC_DMA_RING_RX);
  if (ring->unaligned)
   ring->index_base = lower_32_bits(ring->dma_base);
  else
   ring->index_base = 0;
 }

 return 0;

err_dma_free:
 bgmac_dma_free(bgmac);
 return -ENOMEM;
}
