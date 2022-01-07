
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int denominator; int numerator; } ;
struct TYPE_6__ {int readbuffers; TYPE_1__ timeperframe; } ;
struct TYPE_5__ {TYPE_3__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct v4l2_fract {int denominator; int numerator; } ;
struct file {int dummy; } ;
struct cobalt_stream {int timings; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct v4l2_fract v4l2_calc_timeperframe (int *) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct cobalt_stream *s = video_drvdata(file);
 struct v4l2_fract fps;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 fps = v4l2_calc_timeperframe(&s->timings);
 a->parm.capture.timeperframe.numerator = fps.numerator;
 a->parm.capture.timeperframe.denominator = fps.denominator;
 a->parm.capture.readbuffers = 3;
 return 0;
}
