
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;


 int EINVAL ;
 scalar_t__ no_overlay ;
 int pr_err (char*) ;
 int setup_window_lock (struct bttv_fh*,struct bttv*,int *,int) ;

__attribute__((used)) static int bttv_s_fmt_vid_overlay(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (no_overlay > 0) {
  pr_err("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
  return -EINVAL;
 }

 return setup_window_lock(fh, btv, &f->fmt.win, 1);
}
