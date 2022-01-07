
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_i2c_data {int frame_interval; } ;
struct TYPE_3__ {int readbuffers; int timeperframe; int capability; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct video_i2c_data* video_drvdata (struct file*) ;

__attribute__((used)) static int video_i2c_g_parm(struct file *filp, void *priv,
         struct v4l2_streamparm *parm)
{
 struct video_i2c_data *data = video_drvdata(filp);

 if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 parm->parm.capture.readbuffers = 1;
 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 parm->parm.capture.timeperframe = data->frame_interval;

 return 0;
}
