
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viu_fh {int win; } ;
struct TYPE_2__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_fmt_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct viu_fh *fh = priv;

 f->fmt.win = fh->win;
 return 0;
}
