
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bdisp_op_cfg {int dst_nbp; } ;
struct TYPE_6__ {int width; } ;
struct TYPE_7__ {TYPE_2__ crop; } ;
struct bdisp_ctx {TYPE_4__** node; TYPE_3__ src; scalar_t__* node_paddr; TYPE_1__* bdisp_dev; } ;
struct TYPE_8__ {scalar_t__ nip; } ;
struct TYPE_5__ {int dev; } ;


 int BDISP_CBCR ;
 int BDISP_RGB ;
 int BDISP_Y ;
 int EINVAL ;
 unsigned int MAX_NB_NODE ;
 scalar_t__ MAX_SRC_WIDTH ;
 unsigned int MAX_VERTICAL_STRIDES ;
 int bdisp_hw_build_node (struct bdisp_ctx*,struct bdisp_op_cfg*,TYPE_4__*,int ,int) ;
 scalar_t__ bdisp_hw_get_op_cfg (struct bdisp_ctx*,struct bdisp_op_cfg*) ;
 int dev_err (int ,char*,unsigned int) ;

__attribute__((used)) static int bdisp_hw_build_all_nodes(struct bdisp_ctx *ctx)
{
 struct bdisp_op_cfg cfg;
 unsigned int i, nid = 0;
 int src_x_offset = 0;

 for (i = 0; i < MAX_NB_NODE; i++)
  if (!ctx->node[i]) {
   dev_err(ctx->bdisp_dev->dev, "node %d is null\n", i);
   return -EINVAL;
  }


 if (bdisp_hw_get_op_cfg(ctx, &cfg))
  return -EINVAL;


 for (i = 0; i < MAX_VERTICAL_STRIDES; i++) {

  bdisp_hw_build_node(ctx, &cfg, ctx->node[nid],
        cfg.dst_nbp == 1 ? BDISP_RGB : BDISP_Y,
        src_x_offset);
  if (nid)
   ctx->node[nid - 1]->nip = ctx->node_paddr[nid];
  nid++;


  if (cfg.dst_nbp > 1) {
   bdisp_hw_build_node(ctx, &cfg, ctx->node[nid],
         BDISP_CBCR, src_x_offset);
   ctx->node[nid - 1]->nip = ctx->node_paddr[nid];
   nid++;
  }


  src_x_offset += MAX_SRC_WIDTH;
  if (src_x_offset >= ctx->src.crop.width)
   break;
 }


 ctx->node[nid - 1]->nip = 0;

 return 0;
}
