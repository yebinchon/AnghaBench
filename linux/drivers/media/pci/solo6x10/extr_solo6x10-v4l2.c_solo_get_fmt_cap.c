
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int bytesperline; int colorspace; int sizeimage; int field; int pixelformat; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct solo_dev {int video_hsize; } ;
struct file {int dummy; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_UYVY ;
 int solo_bytesperline (struct solo_dev*) ;
 int solo_image_size (struct solo_dev*) ;
 int solo_vlines (struct solo_dev*) ;
 struct solo_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_get_fmt_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct solo_dev *solo_dev = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;

 pix->width = solo_dev->video_hsize;
 pix->height = solo_vlines(solo_dev);
 pix->pixelformat = V4L2_PIX_FMT_UYVY;
 pix->field = V4L2_FIELD_INTERLACED;
 pix->sizeimage = solo_image_size(solo_dev);
 pix->colorspace = V4L2_COLORSPACE_SMPTE170M;
 pix->bytesperline = solo_bytesperline(solo_dev);

 return 0;
}
