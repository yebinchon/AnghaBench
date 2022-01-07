
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int stk_try_fmt_vid_cap (struct file*,struct v4l2_format*,int *) ;

__attribute__((used)) static int stk_vidioc_try_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_format *fmtd)
{
 return stk_try_fmt_vid_cap(filp, fmtd, ((void*)0));
}
