
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vicodec_q_data {unsigned int coded_width; unsigned int coded_height; int visible_height; int visible_width; scalar_t__ sequence; struct v4l2_fwht_pixfmt_info* info; } ;
struct TYPE_2__ {int * alpha; int * cr; int * cb; int * luma; int * buf; } ;
struct v4l2_fwht_state {unsigned int coded_width; unsigned int coded_height; int stride; int ref_stride; TYPE_1__ ref_frame; int * compressed_frame; int visible_height; int visible_width; scalar_t__ gop_cnt; } ;
struct vicodec_ctx {unsigned int comp_max_size; unsigned int comp_size; scalar_t__ is_stateless; scalar_t__ is_enc; int * last_src_buf; struct v4l2_fwht_state state; } ;
struct vb2_queue {int type; } ;
struct v4l2_fwht_pixfmt_info {unsigned int width_div; unsigned int height_div; scalar_t__ id; int bytesperline_mult; int luma_alpha_step; int components_num; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ V4L2_PIX_FMT_FWHT ;
 scalar_t__ V4L2_PIX_FMT_FWHT_STATELESS ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VB2_BUF_STATE_QUEUED ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int ) ;
 int kvfree (int *) ;
 void* kvmalloc (unsigned int,int ) ;
 int memcpy (int *,int *,unsigned int) ;
 unsigned int total_frame_size (struct vicodec_q_data*) ;
 struct vicodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vicodec_return_bufs (struct vb2_queue*,int ) ;

__attribute__((used)) static int vicodec_start_streaming(struct vb2_queue *q,
       unsigned int count)
{
 struct vicodec_ctx *ctx = vb2_get_drv_priv(q);
 struct vicodec_q_data *q_data = get_q_data(ctx, q->type);
 struct v4l2_fwht_state *state = &ctx->state;
 const struct v4l2_fwht_pixfmt_info *info = q_data->info;
 unsigned int size = q_data->coded_width * q_data->coded_height;
 unsigned int chroma_div;
 unsigned int total_planes_size;
 u8 *new_comp_frame = ((void*)0);

 chroma_div = info->width_div * info->height_div;
 q_data->sequence = 0;

 if (V4L2_TYPE_IS_OUTPUT(q->type))
  ctx->last_src_buf = ((void*)0);

 state->gop_cnt = 0;

 if ((V4L2_TYPE_IS_OUTPUT(q->type) && !ctx->is_enc) ||
     (!V4L2_TYPE_IS_OUTPUT(q->type) && ctx->is_enc))
  return 0;

 if (info->id == V4L2_PIX_FMT_FWHT ||
     info->id == V4L2_PIX_FMT_FWHT_STATELESS) {
  vicodec_return_bufs(q, VB2_BUF_STATE_QUEUED);
  return -EINVAL;
 }
 total_planes_size = total_frame_size(q_data);
 ctx->comp_max_size = total_planes_size;

 state->visible_width = q_data->visible_width;
 state->visible_height = q_data->visible_height;
 state->coded_width = q_data->coded_width;
 state->coded_height = q_data->coded_height;
 state->stride = q_data->coded_width *
    info->bytesperline_mult;

 if (ctx->is_stateless) {
  state->ref_stride = state->stride;
  return 0;
 }
 state->ref_stride = q_data->coded_width * info->luma_alpha_step;

 state->ref_frame.buf = kvmalloc(total_planes_size, GFP_KERNEL);
 state->ref_frame.luma = state->ref_frame.buf;
 new_comp_frame = kvmalloc(ctx->comp_max_size, GFP_KERNEL);

 if (!state->ref_frame.luma || !new_comp_frame) {
  kvfree(state->ref_frame.luma);
  kvfree(new_comp_frame);
  vicodec_return_bufs(q, VB2_BUF_STATE_QUEUED);
  return -ENOMEM;
 }




 if (state->compressed_frame) {
  if (ctx->comp_size > ctx->comp_max_size)
   ctx->comp_size = ctx->comp_max_size;

  memcpy(new_comp_frame,
         state->compressed_frame, ctx->comp_size);
 }

 kvfree(state->compressed_frame);
 state->compressed_frame = new_comp_frame;

 if (info->components_num < 3) {
  state->ref_frame.cb = ((void*)0);
  state->ref_frame.cr = ((void*)0);
  state->ref_frame.alpha = ((void*)0);
  return 0;
 }

 state->ref_frame.cb = state->ref_frame.luma + size;
 state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;

 if (info->components_num == 4)
  state->ref_frame.alpha =
   state->ref_frame.cr + size / chroma_div;
 else
  state->ref_frame.alpha = ((void*)0);

 return 0;
}
