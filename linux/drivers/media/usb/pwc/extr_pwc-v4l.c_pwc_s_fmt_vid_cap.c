
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct pwc_device {int pixfmt; int height; int width; int vframes; int vb_queue; } ;
struct file {int dummy; } ;
typedef int pixelformat ;


 int EBUSY ;
 int PWC_DEBUG_IOCTL (char*,int,...) ;
 int pwc_set_video_mode (struct pwc_device*,int ,int ,int,int,int*,int ) ;
 int pwc_vidioc_fill_fmt (struct v4l2_format*,int ,int ,int ) ;
 int pwc_vidioc_try_fmt (struct pwc_device*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_s_fmt_vid_cap(struct file *file, void *fh, struct v4l2_format *f)
{
 struct pwc_device *pdev = video_drvdata(file);
 int ret, pixelformat, compression = 0;

 ret = pwc_vidioc_try_fmt(pdev, f);
 if (ret < 0)
  return ret;

 if (vb2_is_busy(&pdev->vb_queue))
  return -EBUSY;

 pixelformat = f->fmt.pix.pixelformat;

 PWC_DEBUG_IOCTL("Trying to set format to: width=%d height=%d fps=%d format=%c%c%c%c\n",
   f->fmt.pix.width, f->fmt.pix.height, pdev->vframes,
   (pixelformat)&255,
   (pixelformat>>8)&255,
   (pixelformat>>16)&255,
   (pixelformat>>24)&255);

 ret = pwc_set_video_mode(pdev, f->fmt.pix.width, f->fmt.pix.height,
     pixelformat, 30, &compression, 0);

 PWC_DEBUG_IOCTL("pwc_set_video_mode(), return=%d\n", ret);

 pwc_vidioc_fill_fmt(f, pdev->width, pdev->height, pdev->pixfmt);
 return ret;
}
