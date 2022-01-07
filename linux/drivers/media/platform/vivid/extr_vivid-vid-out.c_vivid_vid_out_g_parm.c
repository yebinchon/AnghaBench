
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vivid_dev {int timeperframe_vid_out; scalar_t__ multiplanar; } ;
struct TYPE_4__ {int writebuffers; int timeperframe; int capability; } ;
struct TYPE_3__ {TYPE_2__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_vid_out_g_parm(struct file *file, void *priv,
     struct v4l2_streamparm *parm)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (parm->type != (dev->multiplanar ?
      V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE :
      V4L2_BUF_TYPE_VIDEO_OUTPUT))
  return -EINVAL;

 parm->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
 parm->parm.output.timeperframe = dev->timeperframe_vid_out;
 parm->parm.output.writebuffers = 1;

 return 0;
}
