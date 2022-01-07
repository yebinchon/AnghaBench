
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; scalar_t__ pixelformat; int bytesperline; int sizeimage; int field; int colorspace; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct au0828_dev {int width; int height; int frame_size; int field_size; int bytesperline; scalar_t__ stream_state; } ;


 int EINVAL ;
 scalar_t__ STREAM_ON ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_PIX_FMT_UYVY ;
 unsigned int VIDIOC_TRY_FMT ;
 int au0828_analog_stream_enable (struct au0828_dev*) ;
 int au0828_stream_interrupt (struct au0828_dev*) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int au0828_set_format(struct au0828_dev *dev, unsigned int cmd,
        struct v4l2_format *format)
{
 int ret;
 int width = format->fmt.pix.width;
 int height = format->fmt.pix.height;



 if (format->fmt.pix.pixelformat != V4L2_PIX_FMT_UYVY)
  return -EINVAL;


 if (width != 720)
  width = 720;
 if (height != 480)
  height = 480;

 format->fmt.pix.width = width;
 format->fmt.pix.height = height;
 format->fmt.pix.pixelformat = V4L2_PIX_FMT_UYVY;
 format->fmt.pix.bytesperline = width * 2;
 format->fmt.pix.sizeimage = width * height * 2;
 format->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 format->fmt.pix.field = V4L2_FIELD_INTERLACED;

 if (cmd == VIDIOC_TRY_FMT)
  return 0;


 dev->width = width;
 dev->height = height;
 dev->frame_size = width * height * 2;
 dev->field_size = width * height;
 dev->bytesperline = width * 2;

 if (dev->stream_state == STREAM_ON) {
  dprintk(1, "VIDIOC_SET_FMT: interrupting stream!\n");
  ret = au0828_stream_interrupt(dev);
  if (ret != 0) {
   dprintk(1, "error interrupting video stream!\n");
   return ret;
  }
 }

 au0828_analog_stream_enable(dev);

 return 0;
}
