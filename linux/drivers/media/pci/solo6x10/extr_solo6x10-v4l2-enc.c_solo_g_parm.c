
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int denominator; int numerator; } ;
struct v4l2_captureparm {int readbuffers; scalar_t__ capturemode; TYPE_3__ timeperframe; int capability; } ;
struct TYPE_5__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct solo_enc_dev {TYPE_1__* solo_dev; int interval; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int fps; } ;


 int V4L2_CAP_TIMEPERFRAME ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_g_parm(struct file *file, void *priv,
         struct v4l2_streamparm *sp)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct v4l2_captureparm *cp = &sp->parm.capture;

 cp->capability = V4L2_CAP_TIMEPERFRAME;
 cp->timeperframe.numerator = solo_enc->interval;
 cp->timeperframe.denominator = solo_enc->solo_dev->fps;
 cp->capturemode = 0;

 cp->readbuffers = 2;

 return 0;
}
