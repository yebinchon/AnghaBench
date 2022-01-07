
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; unsigned int denominator; } ;
struct TYPE_5__ {int readbuffers; TYPE_1__ timeperframe; int capability; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; } ;
struct file {int dummy; } ;
struct aspeed_video {unsigned int frame_rate; } ;


 int FIELD_PREP (int ,unsigned int) ;
 unsigned int MAX_FRAME_RATE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int VE_CTRL ;
 int VE_CTRL_FRC ;
 int aspeed_video_update (struct aspeed_video*,int ,int ,int ) ;
 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_set_parm(struct file *file, void *fh,
     struct v4l2_streamparm *a)
{
 unsigned int frame_rate = 0;
 struct aspeed_video *video = video_drvdata(file);

 a->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 a->parm.capture.readbuffers = 3;

 if (a->parm.capture.timeperframe.numerator)
  frame_rate = a->parm.capture.timeperframe.denominator /
   a->parm.capture.timeperframe.numerator;

 if (!frame_rate || frame_rate > MAX_FRAME_RATE) {
  frame_rate = 0;
  a->parm.capture.timeperframe.denominator = MAX_FRAME_RATE;
  a->parm.capture.timeperframe.numerator = 1;
 }

 if (video->frame_rate != frame_rate) {
  video->frame_rate = frame_rate;
  aspeed_video_update(video, VE_CTRL, VE_CTRL_FRC,
        FIELD_PREP(VE_CTRL_FRC, frame_rate));
 }

 return 0;
}
