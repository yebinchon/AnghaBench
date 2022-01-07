
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_vcodec_mem {unsigned long size; unsigned long va; scalar_t__ dma_addr; } ;
struct mtk_vcodec_ctx {int id; TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* plat_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 unsigned long dma_alloc_coherent (struct device*,unsigned long,scalar_t__*,int ) ;
 int mtk_v4l2_debug (int,char*,int ,unsigned long) ;
 int mtk_v4l2_err (char*,int ,unsigned long) ;

int mtk_vcodec_mem_alloc(struct mtk_vcodec_ctx *data,
   struct mtk_vcodec_mem *mem)
{
 unsigned long size = mem->size;
 struct mtk_vcodec_ctx *ctx = (struct mtk_vcodec_ctx *)data;
 struct device *dev = &ctx->dev->plat_dev->dev;

 mem->va = dma_alloc_coherent(dev, size, &mem->dma_addr, GFP_KERNEL);
 if (!mem->va) {
  mtk_v4l2_err("%s dma_alloc size=%ld failed!", dev_name(dev),
        size);
  return -ENOMEM;
 }

 mtk_v4l2_debug(3, "[%d]  - va      = %p", ctx->id, mem->va);
 mtk_v4l2_debug(3, "[%d]  - dma     = 0x%lx", ctx->id,
         (unsigned long)mem->dma_addr);
 mtk_v4l2_debug(3, "[%d]    size = 0x%lx", ctx->id, size);

 return 0;
}
