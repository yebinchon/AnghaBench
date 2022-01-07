
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u16 ;
struct bnx2_sw_bd {int * data; } ;
struct bnx2_rx_ring_info {int rx_prod_bseq; struct bnx2_rx_bd** rx_desc_ring; struct bnx2_sw_bd* rx_buf_ring; } ;
struct bnx2_rx_bd {int rx_bd_haddr_hi; int rx_bd_haddr_lo; } ;
struct bnx2 {int rx_buf_use_size; TYPE_1__* pdev; int rx_buf_size; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 size_t BNX2_RX_IDX (size_t) ;
 size_t BNX2_RX_RING (size_t) ;
 int EIO ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ dma_map_single (int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_addr_set (struct bnx2_sw_bd*,scalar_t__,scalar_t__) ;
 int get_l2_fhdr (int *) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static inline int
bnx2_alloc_rx_data(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index, gfp_t gfp)
{
 u8 *data;
 struct bnx2_sw_bd *rx_buf = &rxr->rx_buf_ring[index];
 dma_addr_t mapping;
 struct bnx2_rx_bd *rxbd =
  &rxr->rx_desc_ring[BNX2_RX_RING(index)][BNX2_RX_IDX(index)];

 data = kmalloc(bp->rx_buf_size, gfp);
 if (!data)
  return -ENOMEM;

 mapping = dma_map_single(&bp->pdev->dev,
     get_l2_fhdr(data),
     bp->rx_buf_use_size,
     PCI_DMA_FROMDEVICE);
 if (dma_mapping_error(&bp->pdev->dev, mapping)) {
  kfree(data);
  return -EIO;
 }

 rx_buf->data = data;
 dma_unmap_addr_set(rx_buf, mapping, mapping);

 rxbd->rx_bd_haddr_hi = (u64) mapping >> 32;
 rxbd->rx_bd_haddr_lo = (u64) mapping & 0xffffffff;

 rxr->rx_prod_bseq += bp->rx_buf_use_size;

 return 0;
}
