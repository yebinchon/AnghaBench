
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_4__ {int width; int height; int pixelformat; int bytesperline; int sizeimage; int colorspace; int field; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;


 int PWC_DEBUG_IOCTL (char*,int,int,int,int,int,int,int,int) ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void pwc_vidioc_fill_fmt(struct v4l2_format *f,
 int width, int height, u32 pixfmt)
{
 memset(&f->fmt.pix, 0, sizeof(struct v4l2_pix_format));
 f->fmt.pix.width = width;
 f->fmt.pix.height = height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.pixelformat = pixfmt;
 f->fmt.pix.bytesperline = f->fmt.pix.width;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.width * 3 / 2;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
 PWC_DEBUG_IOCTL("pwc_vidioc_fill_fmt() width=%d, height=%d, bytesperline=%d, sizeimage=%d, pixelformat=%c%c%c%c\n",
   f->fmt.pix.width,
   f->fmt.pix.height,
   f->fmt.pix.bytesperline,
   f->fmt.pix.sizeimage,
   (f->fmt.pix.pixelformat)&255,
   (f->fmt.pix.pixelformat>>8)&255,
   (f->fmt.pix.pixelformat>>16)&255,
   (f->fmt.pix.pixelformat>>24)&255);
}
