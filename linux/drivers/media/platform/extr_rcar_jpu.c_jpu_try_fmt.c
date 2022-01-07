
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pix_mp; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct jpu_ctx {TYPE_1__ fh; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int __jpu_try_fmt (struct jpu_ctx*,int *,int *,int ) ;
 struct jpu_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 struct jpu_ctx *ctx = fh_to_ctx(priv);

 if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
  return -EINVAL;

 return __jpu_try_fmt(ctx, ((void*)0), &f->fmt.pix_mp, f->type);
}
