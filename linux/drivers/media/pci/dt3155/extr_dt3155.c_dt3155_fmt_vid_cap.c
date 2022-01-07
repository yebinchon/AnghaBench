
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct dt3155_priv {int width; int height; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_GREY ;
 struct dt3155_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int dt3155_fmt_vid_cap(struct file *filp, void *p, struct v4l2_format *f)
{
 struct dt3155_priv *pd = video_drvdata(filp);

 f->fmt.pix.width = pd->width;
 f->fmt.pix.height = pd->height;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_GREY;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.bytesperline = f->fmt.pix.width;
 f->fmt.pix.sizeimage = f->fmt.pix.width * f->fmt.pix.height;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
