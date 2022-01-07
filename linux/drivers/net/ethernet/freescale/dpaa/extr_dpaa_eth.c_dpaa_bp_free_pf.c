
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {int size; int dev; } ;
struct bm_buffer {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int bm_buf_addr (struct bm_buffer*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int phys_to_virt (int ) ;
 int skb_free_frag (int ) ;

__attribute__((used)) static inline void dpaa_bp_free_pf(const struct dpaa_bp *bp,
       struct bm_buffer *bmb)
{
 dma_addr_t addr = bm_buf_addr(bmb);

 dma_unmap_single(bp->dev, addr, bp->size, DMA_FROM_DEVICE);

 skb_free_frag(phys_to_virt(addr));
}
