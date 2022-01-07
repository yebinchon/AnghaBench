
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long width; unsigned long height; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tw686x_video_channel {unsigned long width; unsigned long height; int vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int tw686x_set_format (struct tw686x_video_channel*,int ,unsigned long,unsigned long,int) ;
 int tw686x_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 unsigned long area;
 bool realloc;
 int err;

 if (vb2_is_busy(&vc->vidq))
  return -EBUSY;

 area = vc->width * vc->height;
 err = tw686x_try_fmt_vid_cap(file, priv, f);
 if (err)
  return err;

 realloc = area != (f->fmt.pix.width * f->fmt.pix.height);
 return tw686x_set_format(vc, f->fmt.pix.pixelformat,
     f->fmt.pix.width, f->fmt.pix.height,
     realloc);
}
