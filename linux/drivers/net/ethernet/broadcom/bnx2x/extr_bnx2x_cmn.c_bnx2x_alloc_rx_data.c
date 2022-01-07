
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct sw_rx_bd {int * data; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {int rx_buf_size; struct eth_rx_bd* rx_desc_ring; struct sw_rx_bd* rx_buf_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int BNX2X_ERR (char*) ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int NET_SKB_PAD ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int * bnx2x_frag_alloc (struct bnx2x_fastpath*,int ) ;
 int bnx2x_frag_free (struct bnx2x_fastpath*,int *) ;
 void* cpu_to_le32 (int ) ;
 int dma_map_single (int *,int *,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_addr_set (struct sw_rx_bd*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bnx2x_alloc_rx_data(struct bnx2x *bp, struct bnx2x_fastpath *fp,
          u16 index, gfp_t gfp_mask)
{
 u8 *data;
 struct sw_rx_bd *rx_buf = &fp->rx_buf_ring[index];
 struct eth_rx_bd *rx_bd = &fp->rx_desc_ring[index];
 dma_addr_t mapping;

 data = bnx2x_frag_alloc(fp, gfp_mask);
 if (unlikely(data == ((void*)0)))
  return -ENOMEM;

 mapping = dma_map_single(&bp->pdev->dev, data + NET_SKB_PAD,
     fp->rx_buf_size,
     DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(&bp->pdev->dev, mapping))) {
  bnx2x_frag_free(fp, data);
  BNX2X_ERR("Can't map rx data\n");
  return -ENOMEM;
 }

 rx_buf->data = data;
 dma_unmap_addr_set(rx_buf, mapping, mapping);

 rx_bd->addr_hi = cpu_to_le32(U64_HI(mapping));
 rx_bd->addr_lo = cpu_to_le32(U64_LO(mapping));

 return 0;
}
