
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_get_pixel_aspect (struct vivid_dev*) ;

int vivid_vid_out_g_pixelaspect(struct file *file, void *priv,
    int type, struct v4l2_fract *f)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 switch (vivid_get_pixel_aspect(dev)) {
 case 129:
  f->numerator = 11;
  f->denominator = 10;
  break;
 case 128:
  f->numerator = 54;
  f->denominator = 59;
  break;
 default:
  break;
 }
 return 0;
}
