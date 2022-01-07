
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int sh_veu_s_fmt (void*,struct v4l2_format*) ;
 int sh_veu_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int sh_veu_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 int ret = sh_veu_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 return sh_veu_s_fmt(priv, f);
}
