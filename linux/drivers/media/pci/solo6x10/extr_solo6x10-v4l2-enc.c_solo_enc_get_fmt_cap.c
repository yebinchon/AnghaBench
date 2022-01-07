
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int colorspace; int sizeimage; int field; int pixelformat; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct solo_enc_dev {scalar_t__ interlaced; int fmt; int height; int width; } ;
struct file {int dummy; } ;


 int FRAME_BUF_SIZE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enc_get_fmt_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;

 pix->width = solo_enc->width;
 pix->height = solo_enc->height;
 pix->pixelformat = solo_enc->fmt;
 pix->field = solo_enc->interlaced ? V4L2_FIELD_INTERLACED :
       V4L2_FIELD_NONE;
 pix->sizeimage = FRAME_BUF_SIZE;
 pix->colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
