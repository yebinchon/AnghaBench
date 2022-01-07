
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {scalar_t__ type; } ;
struct pwc_device {int pixfmt; int height; int width; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int PWC_DEBUG_IOCTL (char*,int ,int ) ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int pwc_vidioc_fill_fmt (struct v4l2_format*,int ,int ,int ) ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_g_fmt_vid_cap(struct file *file, void *fh, struct v4l2_format *f)
{
 struct pwc_device *pdev = video_drvdata(file);

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 PWC_DEBUG_IOCTL("ioctl(VIDIOC_G_FMT) return size %dx%d\n",
   pdev->width, pdev->height);
 pwc_vidioc_fill_fmt(f, pdev->width, pdev->height, pdev->pixfmt);
 return 0;
}
