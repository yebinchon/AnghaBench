
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int capturemode; scalar_t__ extendedmode; int reserved; } ;
struct TYPE_4__ {int outputmode; scalar_t__ extendedmode; int reserved; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ output; } ;
struct v4l2_streamparm {TYPE_3__ parm; int type; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_parm ) (struct file*,void*,struct v4l2_streamparm*) ;} ;
struct file {int dummy; } ;


 int V4L2_MODE_HIGHQUALITY ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int check_fmt (struct file*,int ) ;
 int memset (int ,int ,int) ;
 int stub1 (struct file*,void*,struct v4l2_streamparm*) ;

__attribute__((used)) static int v4l_s_parm(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct v4l2_streamparm *p = arg;
 int ret = check_fmt(file, p->type);

 if (ret)
  return ret;


 if (V4L2_TYPE_IS_OUTPUT(p->type)) {
  memset(p->parm.output.reserved, 0,
         sizeof(p->parm.output.reserved));
  p->parm.output.extendedmode = 0;
  p->parm.output.outputmode &= V4L2_MODE_HIGHQUALITY;
 } else {
  memset(p->parm.capture.reserved, 0,
         sizeof(p->parm.capture.reserved));
  p->parm.capture.extendedmode = 0;
  p->parm.capture.capturemode &= V4L2_MODE_HIGHQUALITY;
 }
 return ops->vidioc_s_parm(file, fh, p);
}
