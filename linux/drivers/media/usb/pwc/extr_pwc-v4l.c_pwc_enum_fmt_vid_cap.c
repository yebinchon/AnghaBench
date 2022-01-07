
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct pwc_device {int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_PWC1 ;
 int V4L2_PIX_FMT_PWC2 ;
 int V4L2_PIX_FMT_YUV420 ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_enum_fmt_vid_cap(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 struct pwc_device *pdev = video_drvdata(file);


 switch (f->index) {
 case 0:

  f->pixelformat = pdev->type <= 646 ? V4L2_PIX_FMT_PWC1 : V4L2_PIX_FMT_PWC2;
  break;
 case 1:
  f->pixelformat = V4L2_PIX_FMT_YUV420;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
