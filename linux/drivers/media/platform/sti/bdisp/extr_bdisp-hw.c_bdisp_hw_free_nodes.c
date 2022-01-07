
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdisp_node {int dummy; } ;
struct bdisp_ctx {int * node_paddr; scalar_t__* node; TYPE_1__* bdisp_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_ATTR_WRITE_COMBINE ;
 int MAX_NB_NODE ;
 int dma_free_attrs (int ,int,scalar_t__,int ,int ) ;

void bdisp_hw_free_nodes(struct bdisp_ctx *ctx)
{
 if (ctx && ctx->node[0])
  dma_free_attrs(ctx->bdisp_dev->dev,
          sizeof(struct bdisp_node) * MAX_NB_NODE,
          ctx->node[0], ctx->node_paddr[0],
          DMA_ATTR_WRITE_COMBINE);
}
