
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; int sys_errors; struct delta_dev* dev; } ;
struct delta_buf {char const* name; unsigned long attrs; int paddr; void* vaddr; int size; } ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int dev_dbg (int ,char*,int ,int ,void*,int *,char const*) ;
 int dev_err (int ,char*,int ,char const*,int ) ;
 void* dma_alloc_attrs (int ,int ,int *,int,unsigned long) ;

int hw_alloc(struct delta_ctx *ctx, u32 size, const char *name,
      struct delta_buf *buf)
{
 struct delta_dev *delta = ctx->dev;
 dma_addr_t dma_addr;
 void *addr;
 unsigned long attrs = DMA_ATTR_WRITE_COMBINE;

 addr = dma_alloc_attrs(delta->dev, size, &dma_addr,
          GFP_KERNEL | __GFP_NOWARN, attrs);
 if (!addr) {
  dev_err(delta->dev,
   "%s hw_alloc:dma_alloc_coherent failed for %s (size=%d)\n",
   ctx->name, name, size);
  ctx->sys_errors++;
  return -ENOMEM;
 }

 buf->size = size;
 buf->paddr = dma_addr;
 buf->vaddr = addr;
 buf->name = name;
 buf->attrs = attrs;

 dev_dbg(delta->dev,
  "%s allocate %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\n",
  ctx->name, size, buf->vaddr, &buf->paddr, buf->name);

 return 0;
}
