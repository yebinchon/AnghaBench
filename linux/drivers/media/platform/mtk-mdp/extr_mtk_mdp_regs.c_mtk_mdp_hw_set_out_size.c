
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int top; int left; } ;
struct mtk_mdp_frame {int height; int width; TYPE_3__ crop; } ;
struct TYPE_5__ {TYPE_1__* vsi; } ;
struct mtk_mdp_ctx {TYPE_2__ vpu; struct mtk_mdp_frame d_frame; } ;
struct mdp_config {int h; int w; scalar_t__ y; scalar_t__ x; int crop_h; int crop_w; int crop_y; int crop_x; } ;
struct TYPE_4__ {struct mdp_config dst_config; } ;



void mtk_mdp_hw_set_out_size(struct mtk_mdp_ctx *ctx)
{
 struct mtk_mdp_frame *frame = &ctx->d_frame;
 struct mdp_config *config = &ctx->vpu.vsi->dst_config;

 config->crop_x = frame->crop.left;
 config->crop_y = frame->crop.top;
 config->crop_w = frame->crop.width;
 config->crop_h = frame->crop.height;
 config->x = 0;
 config->y = 0;
 config->w = frame->width;
 config->h = frame->height;
}
