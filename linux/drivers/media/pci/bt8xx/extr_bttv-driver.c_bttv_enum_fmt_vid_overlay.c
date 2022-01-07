
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int FORMAT_FLAGS_PACKED ;
 int bttv_enum_fmt_cap_ovr (struct v4l2_fmtdesc*) ;
 TYPE_1__* formats ;
 scalar_t__ no_overlay ;
 int pr_err (char*) ;

__attribute__((used)) static int bttv_enum_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 int rc;

 if (no_overlay > 0) {
  pr_err("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
  return -EINVAL;
 }

 rc = bttv_enum_fmt_cap_ovr(f);

 if (rc < 0)
  return rc;

 if (!(formats[rc].flags & FORMAT_FLAGS_PACKED))
  return -EINVAL;

 return 0;
}
