
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; int capability; int readbuffers; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct pwc_device {int vframes; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int MIN_FRAMES ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int memset (struct v4l2_streamparm*,int ,int) ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_g_parm(struct file *file, void *fh,
        struct v4l2_streamparm *parm)
{
 struct pwc_device *pdev = video_drvdata(file);

 if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 memset(parm, 0, sizeof(*parm));

 parm->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 parm->parm.capture.readbuffers = MIN_FRAMES;
 parm->parm.capture.capability |= V4L2_CAP_TIMEPERFRAME;
 parm->parm.capture.timeperframe.denominator = pdev->vframes;
 parm->parm.capture.timeperframe.numerator = 1;

 return 0;
}
