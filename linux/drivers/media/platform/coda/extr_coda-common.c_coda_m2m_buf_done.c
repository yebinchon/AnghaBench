
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int flags; } ;
struct v4l2_event {int type; } ;
struct coda_ctx {int fh; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int V4L2_BUF_FLAG_LAST ;
 int V4L2_EVENT_EOS ;
 int v4l2_event_queue_fh (int *,struct v4l2_event const*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;

void coda_m2m_buf_done(struct coda_ctx *ctx, struct vb2_v4l2_buffer *buf,
         enum vb2_buffer_state state)
{
 const struct v4l2_event eos_event = {
  .type = V4L2_EVENT_EOS
 };

 if (buf->flags & V4L2_BUF_FLAG_LAST)
  v4l2_event_queue_fh(&ctx->fh, &eos_event);

 v4l2_m2m_buf_done(buf, state);
}
