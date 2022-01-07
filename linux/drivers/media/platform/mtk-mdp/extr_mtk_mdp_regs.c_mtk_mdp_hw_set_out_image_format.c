
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtk_mdp_frame {int * payload; TYPE_3__* fmt; } ;
struct TYPE_5__ {TYPE_1__* vsi; } ;
struct mtk_mdp_ctx {TYPE_2__ vpu; struct mtk_mdp_frame d_frame; } ;
struct mdp_config {scalar_t__ h_stride; scalar_t__ w_stride; int format; } ;
struct mdp_buffer {unsigned int plane_num; int * plane_size; } ;
struct TYPE_6__ {unsigned int num_comp; int pixelformat; } ;
struct TYPE_4__ {struct mdp_buffer dst_buffer; struct mdp_config dst_config; } ;


 int mtk_mdp_map_color_format (int ) ;

void mtk_mdp_hw_set_out_image_format(struct mtk_mdp_ctx *ctx)
{
 unsigned int i;
 struct mtk_mdp_frame *frame = &ctx->d_frame;
 struct mdp_config *config = &ctx->vpu.vsi->dst_config;
 struct mdp_buffer *dst_buf = &ctx->vpu.vsi->dst_buffer;

 dst_buf->plane_num = frame->fmt->num_comp;
 config->format = mtk_mdp_map_color_format(frame->fmt->pixelformat);
 config->w_stride = 0;
 config->h_stride = 0;
 for (i = 0; i < dst_buf->plane_num; i++)
  dst_buf->plane_size[i] = frame->payload[i];
}
