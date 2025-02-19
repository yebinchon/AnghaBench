
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct v4l2_fract {int denominator; int numerator; } ;
struct venus_inst {int fps; struct v4l2_fract timeperframe; } ;
struct v4l2_outputparm {int capability; int reserved; struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_outputparm output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ USEC_PER_SEC ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int do_div (int,int) ;
 int memset (int ,int ,int) ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int venc_s_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct venus_inst *inst = to_inst(file);
 struct v4l2_outputparm *out = &a->parm.output;
 struct v4l2_fract *timeperframe = &out->timeperframe;
 u64 us_per_frame, fps;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
     a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return -EINVAL;

 memset(out->reserved, 0, sizeof(out->reserved));

 if (!timeperframe->denominator)
  timeperframe->denominator = inst->timeperframe.denominator;
 if (!timeperframe->numerator)
  timeperframe->numerator = inst->timeperframe.numerator;

 out->capability = V4L2_CAP_TIMEPERFRAME;

 us_per_frame = timeperframe->numerator * (u64)USEC_PER_SEC;
 do_div(us_per_frame, timeperframe->denominator);

 if (!us_per_frame)
  return -EINVAL;

 fps = (u64)USEC_PER_SEC;
 do_div(fps, us_per_frame);

 inst->timeperframe = *timeperframe;
 inst->fps = fps;

 return 0;
}
