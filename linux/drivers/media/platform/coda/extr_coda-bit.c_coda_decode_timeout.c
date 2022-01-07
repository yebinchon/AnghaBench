
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct coda_ctx {int bit_stream_param; scalar_t__ qsequence; TYPE_1__ fh; } ;


 int CODA_BIT_STREAM_END_FLAG ;
 int VB2_BUF_STATE_ERROR ;
 int coda_m2m_buf_done (struct coda_ctx*,struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;

__attribute__((used)) static void coda_decode_timeout(struct coda_ctx *ctx)
{
 struct vb2_v4l2_buffer *dst_buf;







 if (!(ctx->bit_stream_param & CODA_BIT_STREAM_END_FLAG))
  return;

 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 dst_buf->sequence = ctx->qsequence - 1;

 coda_m2m_buf_done(ctx, dst_buf, VB2_BUF_STATE_ERROR);
}
