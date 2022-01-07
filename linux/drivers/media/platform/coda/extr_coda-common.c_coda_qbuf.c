
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {scalar_t__ type; int flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct coda_ctx {scalar_t__ inst_type; TYPE_1__ fh; } ;


 scalar_t__ CODA_INST_DECODER ;
 int V4L2_BUF_FLAG_LAST ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct coda_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_qbuf (struct file*,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int coda_qbuf(struct file *file, void *priv,
       struct v4l2_buffer *buf)
{
 struct coda_ctx *ctx = fh_to_ctx(priv);

 if (ctx->inst_type == CODA_INST_DECODER &&
     buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  buf->flags &= ~V4L2_BUF_FLAG_LAST;

 return v4l2_m2m_qbuf(file, ctx->fh.m2m_ctx, buf);
}
