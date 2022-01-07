
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5p_jpeg_q_data {int w; int h; int size; TYPE_2__* fmt; } ;
struct TYPE_3__ {int w; int h; } ;
struct s5p_jpeg_ctx {TYPE_1__ out_q; struct s5p_jpeg_q_data cap_q; } ;
struct TYPE_4__ {int depth; int v_align; int h_align; } ;


 int S5P_JPEG_MAX_HEIGHT ;
 int S5P_JPEG_MAX_WIDTH ;
 int S5P_JPEG_MIN_HEIGHT ;
 int S5P_JPEG_MIN_WIDTH ;
 int jpeg_bound_align_image (struct s5p_jpeg_ctx*,int*,int ,int ,int ,int*,int ,int ,int ) ;

__attribute__((used)) static void s5p_jpeg_set_capture_queue_data(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg_q_data *q_data = &ctx->cap_q;

 q_data->w = ctx->out_q.w;
 q_data->h = ctx->out_q.h;
 jpeg_bound_align_image(ctx, &q_data->w, S5P_JPEG_MIN_WIDTH,
          S5P_JPEG_MAX_WIDTH, q_data->fmt->h_align,
          &q_data->h, S5P_JPEG_MIN_HEIGHT,
          S5P_JPEG_MAX_HEIGHT, q_data->fmt->v_align);

 q_data->size = q_data->w * q_data->h * q_data->fmt->depth >> 3;
}
