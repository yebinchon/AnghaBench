
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sh_vou_device {int dummy; } ;
struct file {int dummy; } ;


 int sh_vou_set_fmt_vid_out (struct sh_vou_device*,int *) ;
 int sh_vou_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 struct sh_vou_device* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_vou_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct sh_vou_device *vou_dev = video_drvdata(file);
 int ret = sh_vou_try_fmt_vid_out(file, priv, fmt);

 if (ret)
  return ret;
 return sh_vou_set_fmt_vid_out(vou_dev, &fmt->fmt.pix);
}
