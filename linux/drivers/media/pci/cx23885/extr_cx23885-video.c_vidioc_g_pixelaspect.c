
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; int denominator; } ;
struct file {int dummy; } ;
struct cx23885_dev {int tvnorm; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_STD_625_50 ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_pixelaspect(struct file *file, void *priv,
    int type, struct v4l2_fract *f)
{
 struct cx23885_dev *dev = video_drvdata(file);
 bool is_50hz = dev->tvnorm & V4L2_STD_625_50;

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 f->numerator = is_50hz ? 54 : 11;
 f->denominator = is_50hz ? 59 : 10;

 return 0;
}
