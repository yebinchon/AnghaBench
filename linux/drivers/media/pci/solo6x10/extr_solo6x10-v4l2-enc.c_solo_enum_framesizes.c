
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct v4l2_frmsizeenum {int index; int type; TYPE_1__ discrete; int pixel_format; } ;
struct solo_enc_dev {struct solo_dev* solo_dev; } ;
struct solo_dev {int video_hsize; int video_vsize; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 scalar_t__ solo_valid_pixfmt (int ,int ) ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enum_framesizes(struct file *file, void *priv,
    struct v4l2_frmsizeenum *fsize)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct solo_dev *solo_dev = solo_enc->solo_dev;

 if (solo_valid_pixfmt(fsize->pixel_format, solo_dev->type))
  return -EINVAL;

 switch (fsize->index) {
 case 0:
  fsize->discrete.width = solo_dev->video_hsize >> 1;
  fsize->discrete.height = solo_dev->video_vsize;
  break;
 case 1:
  fsize->discrete.width = solo_dev->video_hsize;
  fsize->discrete.height = solo_dev->video_vsize << 1;
  break;
 default:
  return -EINVAL;
 }

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;

 return 0;
}
