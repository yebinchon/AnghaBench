
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_i2c_data {TYPE_3__* chip; } ;
struct v4l2_pix_format {unsigned int width; int height; unsigned int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct v4l2_frmsize_discrete {unsigned int width; int height; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int bpp; TYPE_2__* format; struct v4l2_frmsize_discrete* size; } ;
struct TYPE_5__ {int pixelformat; } ;


 int V4L2_COLORSPACE_RAW ;
 int V4L2_FIELD_NONE ;
 struct video_i2c_data* video_drvdata (struct file*) ;

__attribute__((used)) static int video_i2c_try_fmt_vid_cap(struct file *file, void *fh,
           struct v4l2_format *fmt)
{
 const struct video_i2c_data *data = video_drvdata(file);
 const struct v4l2_frmsize_discrete *size = data->chip->size;
 struct v4l2_pix_format *pix = &fmt->fmt.pix;
 unsigned int bpp = data->chip->bpp / 8;

 pix->width = size->width;
 pix->height = size->height;
 pix->pixelformat = data->chip->format->pixelformat;
 pix->field = V4L2_FIELD_NONE;
 pix->bytesperline = pix->width * bpp;
 pix->sizeimage = pix->bytesperline * pix->height;
 pix->colorspace = V4L2_COLORSPACE_RAW;

 return 0;
}
