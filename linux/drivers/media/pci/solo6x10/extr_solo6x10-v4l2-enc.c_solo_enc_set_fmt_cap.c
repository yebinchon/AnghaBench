
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ width; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct solo_enc_dev {int fmt; int mode; int vidq; struct solo_dev* solo_dev; } ;
struct solo_dev {scalar_t__ video_hsize; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int SOLO_ENC_MODE_CIF ;
 int SOLO_ENC_MODE_D1 ;
 int solo_enc_try_fmt_cap (struct file*,void*,struct v4l2_format*) ;
 int solo_update_mode (struct solo_enc_dev*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enc_set_fmt_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct solo_dev *solo_dev = solo_enc->solo_dev;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 if (vb2_is_busy(&solo_enc->vidq))
  return -EBUSY;

 ret = solo_enc_try_fmt_cap(file, priv, f);
 if (ret)
  return ret;

 if (pix->width == solo_dev->video_hsize)
  solo_enc->mode = SOLO_ENC_MODE_D1;
 else
  solo_enc->mode = SOLO_ENC_MODE_CIF;


 solo_enc->fmt = pix->pixelformat;
 solo_update_mode(solo_enc);
 return 0;
}
