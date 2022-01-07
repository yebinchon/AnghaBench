
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;
struct delta_buf {int attrs; int paddr; int vaddr; int size; int name; } ;


 int dev_dbg (int ,char*,int ,int ,int ,int *,int ) ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;

void hw_free(struct delta_ctx *ctx, struct delta_buf *buf)
{
 struct delta_dev *delta = ctx->dev;

 dev_dbg(delta->dev,
  "%s     free %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\n",
  ctx->name, buf->size, buf->vaddr, &buf->paddr, buf->name);

 dma_free_attrs(delta->dev, buf->size,
         buf->vaddr, buf->paddr, buf->attrs);
}
