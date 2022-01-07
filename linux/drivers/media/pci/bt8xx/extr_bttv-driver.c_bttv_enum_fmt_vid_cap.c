
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int bttv_enum_fmt_cap_ovr (struct v4l2_fmtdesc*) ;

__attribute__((used)) static int bttv_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 int rc = bttv_enum_fmt_cap_ovr(f);

 if (rc < 0)
  return rc;

 return 0;
}
