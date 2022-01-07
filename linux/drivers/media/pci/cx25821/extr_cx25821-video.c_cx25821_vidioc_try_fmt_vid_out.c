
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx25821_fmt {int depth; } ;
struct cx25821_dev {int tvnorm; } ;
struct cx25821_channel {struct cx25821_dev* dev; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_STD_625_50 ;
 struct cx25821_fmt* cx25821_format_by_fourcc (int ) ;
 struct cx25821_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int cx25821_vidioc_try_fmt_vid_out(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct cx25821_channel *chan = video_drvdata(file);
 struct cx25821_dev *dev = chan->dev;
 const struct cx25821_fmt *fmt;

 fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;
 f->fmt.pix.width = 720;
 f->fmt.pix.height = (dev->tvnorm & V4L2_STD_625_50) ? 576 : 480;
 f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 f->fmt.pix.bytesperline = (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
