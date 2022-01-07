
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int field; int colorspace; scalar_t__ bytesperline; int sizeimage; int pixelformat; int height; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct hdpvr_video_info {int width; int height; int valid; } ;
struct hdpvr_fh {scalar_t__ legacy_mode; } ;
struct hdpvr_device {int width; int bulk_in_size; int height; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_MPEG ;
 int get_video_info (struct hdpvr_device*,struct hdpvr_video_info*) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *_fh,
    struct v4l2_format *f)
{
 struct hdpvr_device *dev = video_drvdata(file);
 struct hdpvr_fh *fh = _fh;
 int ret;
 if (fh->legacy_mode) {
  struct hdpvr_video_info vid_info;

  ret = get_video_info(dev, &vid_info);
  if (ret < 0)
   return ret;
  if (!vid_info.valid)
   return -EFAULT;
  f->fmt.pix.width = vid_info.width;
  f->fmt.pix.height = vid_info.height;
 } else {
  f->fmt.pix.width = dev->width;
  f->fmt.pix.height = dev->height;
 }
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.sizeimage = dev->bulk_in_size;
 f->fmt.pix.bytesperline = 0;
 if (f->fmt.pix.width == 720) {

  f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
  f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 } else {

  f->fmt.pix.colorspace = V4L2_COLORSPACE_REC709;
  f->fmt.pix.field = V4L2_FIELD_NONE;
 }
 return 0;
}
