
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_ctx {int dummy; } ;
struct v4l2_format {int type; } ;
struct file {int dummy; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int __vpe_s_fmt (struct vpe_ctx*,struct v4l2_format*) ;
 struct vpe_ctx* file2ctx (struct file*) ;
 int set_dst_registers (struct vpe_ctx*) ;
 int set_src_registers (struct vpe_ctx*) ;
 int set_srcdst_params (struct vpe_ctx*) ;
 int vpe_try_fmt (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vpe_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
{
 int ret;
 struct vpe_ctx *ctx = file2ctx(file);

 ret = vpe_try_fmt(file, priv, f);
 if (ret)
  return ret;

 ret = __vpe_s_fmt(ctx, f);
 if (ret)
  return ret;

 if (V4L2_TYPE_IS_OUTPUT(f->type))
  set_src_registers(ctx);
 else
  set_dst_registers(ctx);

 return set_srcdst_params(ctx);
}
