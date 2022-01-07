
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int numerator; int denominator; } ;
struct TYPE_6__ {int numerator; int denominator; } ;
struct TYPE_5__ {int numerator; int denominator; } ;
struct TYPE_8__ {TYPE_3__ step; TYPE_2__ max; TYPE_1__ min; } ;
struct v4l2_frmivalenum {scalar_t__ width; scalar_t__ height; TYPE_4__ stepwise; int type; scalar_t__ index; int pixel_format; } ;
struct solo_enc_dev {struct solo_dev* solo_dev; } ;
struct solo_dev {scalar_t__ video_hsize; scalar_t__ video_vsize; int fps; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_STEPWISE ;
 scalar_t__ solo_valid_pixfmt (int ,int ) ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enum_frameintervals(struct file *file, void *priv,
        struct v4l2_frmivalenum *fintv)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct solo_dev *solo_dev = solo_enc->solo_dev;

 if (solo_valid_pixfmt(fintv->pixel_format, solo_dev->type))
  return -EINVAL;
 if (fintv->index)
  return -EINVAL;
 if ((fintv->width != solo_dev->video_hsize >> 1 ||
      fintv->height != solo_dev->video_vsize) &&
     (fintv->width != solo_dev->video_hsize ||
      fintv->height != solo_dev->video_vsize << 1))
  return -EINVAL;

 fintv->type = V4L2_FRMIVAL_TYPE_STEPWISE;

 fintv->stepwise.min.numerator = 1;
 fintv->stepwise.min.denominator = solo_dev->fps;

 fintv->stepwise.max.numerator = 15;
 fintv->stepwise.max.denominator = solo_dev->fps;

 fintv->stepwise.step.numerator = 1;
 fintv->stepwise.step.denominator = solo_dev->fps;

 return 0;
}
