
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct saa7134_dev {int field; int height; int width; int fmt; } ;
struct file {int dummy; } ;


 int format_by_fourcc (int ) ;
 int saa7134_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int saa7134_s_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct saa7134_dev *dev = video_drvdata(file);
 int err;

 err = saa7134_try_fmt_vid_cap(file, priv, f);
 if (0 != err)
  return err;

 dev->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 dev->width = f->fmt.pix.width;
 dev->height = f->fmt.pix.height;
 dev->field = f->fmt.pix.field;
 return 0;
}
