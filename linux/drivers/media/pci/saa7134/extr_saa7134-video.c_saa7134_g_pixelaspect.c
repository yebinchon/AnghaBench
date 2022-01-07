
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OVERLAY ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int saa7134_g_pixelaspect(struct file *file, void *priv,
     int type, struct v4l2_fract *f)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;

 if (dev->tvnorm->id & V4L2_STD_525_60) {
  f->numerator = 11;
  f->denominator = 10;
 }
 if (dev->tvnorm->id & V4L2_STD_625_50) {
  f->numerator = 54;
  f->denominator = 59;
 }
 return 0;
}
