
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numerator; int denominator; } ;
struct v4l2_captureparm {int readbuffers; TYPE_1__ timeperframe; int capability; } ;
struct TYPE_4__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct tw686x_video_channel {int fps; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_g_parm(struct file *file, void *priv,
    struct v4l2_streamparm *sp)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct v4l2_captureparm *cp = &sp->parm.capture;

 if (sp->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 sp->parm.capture.readbuffers = 3;

 cp->capability = V4L2_CAP_TIMEPERFRAME;
 cp->timeperframe.numerator = 1;
 cp->timeperframe.denominator = vc->fps;
 return 0;
}
