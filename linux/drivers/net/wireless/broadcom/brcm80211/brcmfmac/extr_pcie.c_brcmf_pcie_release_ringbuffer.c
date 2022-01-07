
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {int depth; int item_len; void* buf_addr; } ;
struct brcmf_pcie_ringbuf {int dma_handle; TYPE_1__ commonring; } ;


 int dma_free_coherent (struct device*,int,void*,int ) ;
 int kfree (struct brcmf_pcie_ringbuf*) ;

__attribute__((used)) static void brcmf_pcie_release_ringbuffer(struct device *dev,
       struct brcmf_pcie_ringbuf *ring)
{
 void *dma_buf;
 u32 size;

 if (!ring)
  return;

 dma_buf = ring->commonring.buf_addr;
 if (dma_buf) {
  size = ring->commonring.depth * ring->commonring.item_len;
  dma_free_coherent(dev, size, dma_buf, ring->dma_handle);
 }
 kfree(ring);
}
