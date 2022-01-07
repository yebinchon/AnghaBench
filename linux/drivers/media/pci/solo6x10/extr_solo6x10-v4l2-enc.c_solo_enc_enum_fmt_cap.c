
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct solo_enc_dev {TYPE_1__* solo_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;


 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_MJPEG ;
 int V4L2_PIX_FMT_MPEG4 ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enc_enum_fmt_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 int dev_type = solo_enc->solo_dev->type;

 switch (f->index) {
 case 0:
  switch (dev_type) {
  case 129:
   f->pixelformat = V4L2_PIX_FMT_MPEG4;
   break;
  case 128:
   f->pixelformat = V4L2_PIX_FMT_H264;
   break;
  }
  break;
 case 1:
  f->pixelformat = V4L2_PIX_FMT_MJPEG;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
