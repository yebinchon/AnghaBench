
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct sh_veu_format {int dummy; } ;
struct file {int dummy; } ;


 struct sh_veu_format* sh_veu_find_fmt (struct v4l2_format*) ;
 int sh_veu_try_fmt (struct v4l2_format*,struct sh_veu_format const*) ;

__attribute__((used)) static int sh_veu_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 const struct sh_veu_format *fmt;

 fmt = sh_veu_find_fmt(f);

 return sh_veu_try_fmt(f, fmt);
}
