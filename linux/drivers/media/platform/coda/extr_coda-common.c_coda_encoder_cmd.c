
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int flags; } ;
struct v4l2_encoder_cmd {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct coda_ctx {int wakeup_mutex; int bit_stream_param; TYPE_1__ fh; } ;


 int CODA_BIT_STREAM_END_FLAG ;
 int V4L2_BUF_FLAG_LAST ;
 int coda_try_encoder_cmd (struct file*,void*,struct v4l2_encoder_cmd*) ;
 int coda_wake_up_capture_queue (struct coda_ctx*) ;
 struct coda_ctx* fh_to_ctx (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vb2_v4l2_buffer* v4l2_m2m_last_src_buf (int ) ;

__attribute__((used)) static int coda_encoder_cmd(struct file *file, void *fh,
       struct v4l2_encoder_cmd *ec)
{
 struct coda_ctx *ctx = fh_to_ctx(fh);
 struct vb2_v4l2_buffer *buf;
 int ret;

 ret = coda_try_encoder_cmd(file, fh, ec);
 if (ret < 0)
  return ret;

 mutex_lock(&ctx->wakeup_mutex);
 buf = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);
 if (buf) {





  buf->flags |= V4L2_BUF_FLAG_LAST;
 } else {

  ctx->bit_stream_param |= CODA_BIT_STREAM_END_FLAG;






  coda_wake_up_capture_queue(ctx);
 }
 mutex_unlock(&ctx->wakeup_mutex);

 return 0;
}
