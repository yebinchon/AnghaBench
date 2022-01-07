
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bdisp_request {int nb_req; int vflip; int hflip; int dst; int src; } ;
struct bdisp_node {int dummy; } ;
struct bdisp_ctx {TYPE_2__* bdisp_dev; int vflip; int hflip; int dst; int src; struct bdisp_node** node; } ;
struct TYPE_3__ {struct bdisp_request copy_request; struct bdisp_node** copy_node; } ;
struct TYPE_4__ {int dev; TYPE_1__ dbg; } ;


 int GFP_ATOMIC ;
 int MAX_NB_NODE ;
 struct bdisp_node* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static void bdisp_hw_save_request(struct bdisp_ctx *ctx)
{
 struct bdisp_node **copy_node = ctx->bdisp_dev->dbg.copy_node;
 struct bdisp_request *request = &ctx->bdisp_dev->dbg.copy_request;
 struct bdisp_node **node = ctx->node;
 int i;


 request->src = ctx->src;
 request->dst = ctx->dst;
 request->hflip = ctx->hflip;
 request->vflip = ctx->vflip;
 request->nb_req++;


 for (i = 0; i < MAX_NB_NODE; i++) {

  if (!copy_node[i]) {
   copy_node[i] = devm_kzalloc(ctx->bdisp_dev->dev,
          sizeof(*copy_node[i]),
          GFP_ATOMIC);
   if (!copy_node[i])
    return;
  }
  *copy_node[i] = *node[i];
 }
}
