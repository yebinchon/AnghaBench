
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct jpu_ctx {scalar_t__ encoder; } ;
struct file {int dummy; } ;


 int JPU_DEC_CAPTURE ;
 int JPU_ENC_CAPTURE ;
 struct jpu_ctx* fh_to_ctx (void*) ;
 int jpu_enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int jpu_enum_fmt_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 struct jpu_ctx *ctx = fh_to_ctx(priv);

 return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_CAPTURE :
       JPU_DEC_CAPTURE);
}
