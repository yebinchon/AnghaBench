
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct usbtv {int width; int height; } ;
struct file {int dummy; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_YUYV ;
 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct usbtv *usbtv = video_drvdata(file);

 f->fmt.pix.width = usbtv->width;
 f->fmt.pix.height = usbtv->height;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;
 f->fmt.pix.field = V4L2_FIELD_INTERLACED;
 f->fmt.pix.bytesperline = usbtv->width * 2;
 f->fmt.pix.sizeimage = (f->fmt.pix.bytesperline * f->fmt.pix.height);
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
