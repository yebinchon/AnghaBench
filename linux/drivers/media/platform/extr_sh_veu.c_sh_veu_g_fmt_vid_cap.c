
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int sh_veu_g_fmt (void*,struct v4l2_format*) ;

__attribute__((used)) static int sh_veu_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 return sh_veu_g_fmt(priv, f);
}
