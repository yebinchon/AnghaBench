
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_fmt {int dummy; } ;
struct vpe_ctx {int dummy; } ;
struct v4l2_format {int type; } ;
struct file {int dummy; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VPE_FMT_TYPE_CAPTURE ;
 int VPE_FMT_TYPE_OUTPUT ;
 int __vpe_try_fmt (struct vpe_ctx*,struct v4l2_format*,struct vpe_fmt*,int ) ;
 struct vpe_ctx* file2ctx (struct file*) ;
 struct vpe_fmt* find_format (struct v4l2_format*) ;

__attribute__((used)) static int vpe_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 struct vpe_ctx *ctx = file2ctx(file);
 struct vpe_fmt *fmt = find_format(f);

 if (V4L2_TYPE_IS_OUTPUT(f->type))
  return __vpe_try_fmt(ctx, f, fmt, VPE_FMT_TYPE_OUTPUT);
 else
  return __vpe_try_fmt(ctx, f, fmt, VPE_FMT_TYPE_CAPTURE);
}
