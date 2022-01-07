
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; scalar_t__ denominator; } ;
struct TYPE_6__ {int readbuffers; TYPE_1__ timeperframe; int capability; } ;
struct TYPE_5__ {TYPE_3__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct aspeed_video {scalar_t__ frame_rate; } ;


 scalar_t__ MAX_FRAME_RATE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_get_parm(struct file *file, void *fh,
     struct v4l2_streamparm *a)
{
 struct aspeed_video *video = video_drvdata(file);

 a->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 a->parm.capture.readbuffers = 3;
 a->parm.capture.timeperframe.numerator = 1;
 if (!video->frame_rate)
  a->parm.capture.timeperframe.denominator = MAX_FRAME_RATE;
 else
  a->parm.capture.timeperframe.denominator = video->frame_rate;

 return 0;
}
