
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {int timeperframe; } ;
struct TYPE_3__ {int timeperframe; int capability; } ;
struct TYPE_4__ {TYPE_1__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int venc_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct venus_inst *inst = to_inst(file);

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
     a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return -EINVAL;

 a->parm.output.capability |= V4L2_CAP_TIMEPERFRAME;
 a->parm.output.timeperframe = inst->timeperframe;

 return 0;
}
