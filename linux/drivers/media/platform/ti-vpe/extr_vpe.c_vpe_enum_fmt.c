
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int type; } ;
struct file {int dummy; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VPE_FMT_TYPE_CAPTURE ;
 int VPE_FMT_TYPE_OUTPUT ;
 int __enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int vpe_enum_fmt(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 if (V4L2_TYPE_IS_OUTPUT(f->type))
  return __enum_fmt(f, VPE_FMT_TYPE_OUTPUT);

 return __enum_fmt(f, VPE_FMT_TYPE_CAPTURE);
}
