
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vivid_dev {int timeperframe_vid_cap; scalar_t__ multiplanar; } ;
struct TYPE_4__ {int readbuffers; int timeperframe; int capability; } ;
struct TYPE_3__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_vid_cap_g_parm(struct file *file, void *priv,
     struct v4l2_streamparm *parm)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (parm->type != (dev->multiplanar ?
      V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE :
      V4L2_BUF_TYPE_VIDEO_CAPTURE))
  return -EINVAL;

 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 parm->parm.capture.timeperframe = dev->timeperframe_vid_cap;
 parm->parm.capture.readbuffers = 1;
 return 0;
}
