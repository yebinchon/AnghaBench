
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vicodec_q_data {int sequence; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct vicodec_ctx {int lock; scalar_t__ cur_buf_offset; TYPE_1__ fh; } ;
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;


 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void job_remove_src_buf(struct vicodec_ctx *ctx, u32 state)
{
 struct vb2_v4l2_buffer *src_buf;
 struct vicodec_q_data *q_src;

 q_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
 spin_lock(ctx->lock);
 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 src_buf->sequence = q_src->sequence++;
 v4l2_m2m_buf_done(src_buf, state);
 ctx->cur_buf_offset = 0;
 spin_unlock(ctx->lock);
}
