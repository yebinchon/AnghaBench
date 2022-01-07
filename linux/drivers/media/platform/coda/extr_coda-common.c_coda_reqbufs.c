
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_requestbuffers {scalar_t__ type; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct coda_ctx {TYPE_2__* ops; TYPE_1__ fh; } ;
struct TYPE_4__ {int (* reqbufs ) (struct coda_ctx*,struct v4l2_requestbuffers*) ;} ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct coda_ctx* fh_to_ctx (void*) ;
 int stub1 (struct coda_ctx*,struct v4l2_requestbuffers*) ;
 int v4l2_m2m_reqbufs (struct file*,int ,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int coda_reqbufs(struct file *file, void *priv,
   struct v4l2_requestbuffers *rb)
{
 struct coda_ctx *ctx = fh_to_ctx(priv);
 int ret;

 ret = v4l2_m2m_reqbufs(file, ctx->fh.m2m_ctx, rb);
 if (ret)
  return ret;





 if (rb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT && ctx->ops->reqbufs)
  return ctx->ops->reqbufs(ctx, rb);

 return 0;
}
