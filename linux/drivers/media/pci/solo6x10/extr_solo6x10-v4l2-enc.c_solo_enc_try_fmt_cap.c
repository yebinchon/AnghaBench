
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int width; int height; int field; scalar_t__ bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct solo_enc_dev {struct solo_dev* solo_dev; } ;
struct solo_dev {int video_hsize; int video_vsize; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FRAME_BUF_SIZE ;
 int V4L2_COLORSPACE_SMPTE170M ;



 scalar_t__ solo_valid_pixfmt (int ,int ) ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enc_try_fmt_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct solo_dev *solo_dev = solo_enc->solo_dev;
 struct v4l2_pix_format *pix = &f->fmt.pix;

 if (solo_valid_pixfmt(pix->pixelformat, solo_dev->type))
  return -EINVAL;

 if (pix->width < solo_dev->video_hsize ||
     pix->height < solo_dev->video_vsize << 1) {

  pix->width = solo_dev->video_hsize >> 1;
  pix->height = solo_dev->video_vsize;
 } else {

  pix->width = solo_dev->video_hsize;
  pix->height = solo_dev->video_vsize << 1;
 }

 switch (pix->field) {
 case 128:
 case 129:
  break;
 case 130:
 default:
  pix->field = 129;
  break;
 }


 pix->colorspace = V4L2_COLORSPACE_SMPTE170M;
 pix->sizeimage = FRAME_BUF_SIZE;
 pix->bytesperline = 0;

 return 0;
}
