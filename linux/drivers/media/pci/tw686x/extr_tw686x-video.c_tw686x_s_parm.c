
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int denominator; unsigned int numerator; } ;
struct v4l2_captureparm {TYPE_2__ timeperframe; } ;
struct TYPE_3__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct tw686x_video_channel {unsigned int fps; int vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int tw686x_g_parm (struct file*,void*,struct v4l2_streamparm*) ;
 int tw686x_set_framerate (struct tw686x_video_channel*,unsigned int) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_s_parm(struct file *file, void *priv,
    struct v4l2_streamparm *sp)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct v4l2_captureparm *cp = &sp->parm.capture;
 unsigned int denominator = cp->timeperframe.denominator;
 unsigned int numerator = cp->timeperframe.numerator;
 unsigned int fps;

 if (vb2_is_busy(&vc->vidq))
  return -EBUSY;

 fps = (!numerator || !denominator) ? 0 : denominator / numerator;
 if (vc->fps != fps)
  tw686x_set_framerate(vc, fps);
 return tw686x_g_parm(file, priv, sp);
}
