
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capability; int readbuffers; } ;
struct TYPE_6__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct TYPE_7__ {int min_buffers_needed; } ;
struct gspca_dev {int usb_err; TYPE_4__* sd_desc; TYPE_3__ queue; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int (* get_streamparm ) (struct gspca_dev*,struct v4l2_streamparm*) ;} ;


 int V4L2_CAP_TIMEPERFRAME ;
 int stub1 (struct gspca_dev*,struct v4l2_streamparm*) ;
 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_parm(struct file *filp, void *priv,
   struct v4l2_streamparm *parm)
{
 struct gspca_dev *gspca_dev = video_drvdata(filp);

 parm->parm.capture.readbuffers = gspca_dev->queue.min_buffers_needed;

 if (!gspca_dev->sd_desc->get_streamparm)
  return 0;

 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 gspca_dev->usb_err = 0;
 gspca_dev->sd_desc->get_streamparm(gspca_dev, parm);
 return gspca_dev->usb_err;
}
