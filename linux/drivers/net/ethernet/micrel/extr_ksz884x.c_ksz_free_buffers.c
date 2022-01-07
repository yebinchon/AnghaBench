
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_dma_buf {scalar_t__ skb; } ;
struct ksz_desc_info {int alloc; struct ksz_desc* ring; } ;
struct ksz_desc {int dummy; } ;
struct dev_info {int dummy; } ;


 struct ksz_dma_buf* DMA_BUFFER (struct ksz_desc*) ;
 int free_dma_buf (struct dev_info*,struct ksz_dma_buf*,int) ;

__attribute__((used)) static void ksz_free_buffers(struct dev_info *adapter,
 struct ksz_desc_info *desc_info, int direction)
{
 int i;
 struct ksz_dma_buf *dma_buf;
 struct ksz_desc *desc = desc_info->ring;

 for (i = 0; i < desc_info->alloc; i++) {
  dma_buf = DMA_BUFFER(desc);
  if (dma_buf->skb)
   free_dma_buf(adapter, dma_buf, direction);
  desc++;
 }
}
