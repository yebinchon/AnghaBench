
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numerator; } ;
struct v4l2_captureparm {int readbuffers; scalar_t__ capturemode; TYPE_2__ timeperframe; int capability; } ;
struct TYPE_3__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct tw5864_input {int frame_interval; } ;
struct file {int dummy; } ;


 int V4L2_CAP_TIMEPERFRAME ;
 int tw5864_frameinterval_get (struct tw5864_input*,TYPE_2__*) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_g_parm(struct file *file, void *priv,
    struct v4l2_streamparm *sp)
{
 struct tw5864_input *input = video_drvdata(file);
 struct v4l2_captureparm *cp = &sp->parm.capture;
 int ret;

 cp->capability = V4L2_CAP_TIMEPERFRAME;

 ret = tw5864_frameinterval_get(input, &cp->timeperframe);
 cp->timeperframe.numerator *= input->frame_interval;
 cp->capturemode = 0;
 cp->readbuffers = 2;

 return ret;
}
