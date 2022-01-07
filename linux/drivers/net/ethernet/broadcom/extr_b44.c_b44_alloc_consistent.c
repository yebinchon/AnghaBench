
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_info {int dummy; } ;
struct dma_desc {int dummy; } ;
struct b44 {int flags; scalar_t__ tx_ring_dma; struct dma_desc* tx_ring; TYPE_1__* sdev; scalar_t__ rx_ring_dma; struct dma_desc* rx_ring; void* tx_buffers; void* rx_buffers; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dma_dev; } ;


 int B44_FLAG_RX_RING_HACK ;
 int B44_FLAG_TX_RING_HACK ;
 int B44_RX_RING_SIZE ;
 int B44_TX_RING_SIZE ;
 int DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_BIT_MASK (int) ;
 int DMA_TABLE_BYTES ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int b44_free_consistent (struct b44*) ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 scalar_t__ dma_map_single (int ,struct dma_desc*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int kfree (struct dma_desc*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int b44_alloc_consistent(struct b44 *bp, gfp_t gfp)
{
 int size;

 size = B44_RX_RING_SIZE * sizeof(struct ring_info);
 bp->rx_buffers = kzalloc(size, gfp);
 if (!bp->rx_buffers)
  goto out_err;

 size = B44_TX_RING_SIZE * sizeof(struct ring_info);
 bp->tx_buffers = kzalloc(size, gfp);
 if (!bp->tx_buffers)
  goto out_err;

 size = DMA_TABLE_BYTES;
 bp->rx_ring = dma_alloc_coherent(bp->sdev->dma_dev, size,
      &bp->rx_ring_dma, gfp);
 if (!bp->rx_ring) {



  struct dma_desc *rx_ring;
  dma_addr_t rx_ring_dma;

  rx_ring = kzalloc(size, gfp);
  if (!rx_ring)
   goto out_err;

  rx_ring_dma = dma_map_single(bp->sdev->dma_dev, rx_ring,
          DMA_TABLE_BYTES,
          DMA_BIDIRECTIONAL);

  if (dma_mapping_error(bp->sdev->dma_dev, rx_ring_dma) ||
   rx_ring_dma + size > DMA_BIT_MASK(30)) {
   kfree(rx_ring);
   goto out_err;
  }

  bp->rx_ring = rx_ring;
  bp->rx_ring_dma = rx_ring_dma;
  bp->flags |= B44_FLAG_RX_RING_HACK;
 }

 bp->tx_ring = dma_alloc_coherent(bp->sdev->dma_dev, size,
      &bp->tx_ring_dma, gfp);
 if (!bp->tx_ring) {



  struct dma_desc *tx_ring;
  dma_addr_t tx_ring_dma;

  tx_ring = kzalloc(size, gfp);
  if (!tx_ring)
   goto out_err;

  tx_ring_dma = dma_map_single(bp->sdev->dma_dev, tx_ring,
          DMA_TABLE_BYTES,
          DMA_TO_DEVICE);

  if (dma_mapping_error(bp->sdev->dma_dev, tx_ring_dma) ||
   tx_ring_dma + size > DMA_BIT_MASK(30)) {
   kfree(tx_ring);
   goto out_err;
  }

  bp->tx_ring = tx_ring;
  bp->tx_ring_dma = tx_ring_dma;
  bp->flags |= B44_FLAG_TX_RING_HACK;
 }

 return 0;

out_err:
 b44_free_consistent(bp);
 return -ENOMEM;
}
