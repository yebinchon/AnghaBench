
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ capability; int readbuffers; } ;
struct TYPE_7__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; } ;
struct TYPE_8__ {int min_buffers_needed; } ;
struct gspca_dev {int usb_err; TYPE_1__* sd_desc; TYPE_4__ queue; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int (* set_streamparm ) (struct gspca_dev*,struct v4l2_streamparm*) ;} ;


 scalar_t__ V4L2_CAP_TIMEPERFRAME ;
 int stub1 (struct gspca_dev*,struct v4l2_streamparm*) ;
 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_parm(struct file *filp, void *priv,
   struct v4l2_streamparm *parm)
{
 struct gspca_dev *gspca_dev = video_drvdata(filp);

 parm->parm.capture.readbuffers = gspca_dev->queue.min_buffers_needed;

 if (!gspca_dev->sd_desc->set_streamparm) {
  parm->parm.capture.capability = 0;
  return 0;
 }

 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 gspca_dev->usb_err = 0;
 gspca_dev->sd_desc->set_streamparm(gspca_dev, parm);
 return gspca_dev->usb_err;
}
