
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int sh_veu_enum_fmt (struct v4l2_fmtdesc*,int ,int ) ;
 int sh_veu_fmt_out ;

__attribute__((used)) static int sh_veu_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 return sh_veu_enum_fmt(f, sh_veu_fmt_out, ARRAY_SIZE(sh_veu_fmt_out));
}
