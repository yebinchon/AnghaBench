
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_ctx {int name; } ;
struct hva_buffer {int paddr; int vaddr; int size; int name; } ;
struct device {int dummy; } ;


 int DMA_ATTR_WRITE_COMBINE ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int *,int ) ;
 int devm_kfree (struct device*,struct hva_buffer*) ;
 int dma_free_attrs (struct device*,int ,int ,int ,int ) ;

void hva_mem_free(struct hva_ctx *ctx, struct hva_buffer *buf)
{
 struct device *dev = ctx_to_dev(ctx);

 dev_dbg(dev,
  "%s free %d bytes of HW memory @(virt=%p, phy=%pad): %s\n",
  ctx->name, buf->size, buf->vaddr, &buf->paddr, buf->name);

 dma_free_attrs(dev, buf->size, buf->vaddr, buf->paddr,
         DMA_ATTR_WRITE_COMBINE);

 devm_kfree(dev, buf);
}
