
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct TYPE_3__ {int readbuffers; struct v4l2_fract timeperframe; int capability; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct go7007 {int fps_scale; int sensor_framerate; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_parm(struct file *filp, void *priv,
  struct v4l2_streamparm *parm)
{
 struct go7007 *go = video_drvdata(filp);
 struct v4l2_fract timeperframe = {
  .numerator = 1001 * go->fps_scale,
  .denominator = go->sensor_framerate,
 };

 if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 parm->parm.capture.readbuffers = 2;
 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 parm->parm.capture.timeperframe = timeperframe;

 return 0;
}
