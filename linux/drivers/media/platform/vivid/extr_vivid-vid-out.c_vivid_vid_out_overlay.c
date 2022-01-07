
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_dev {unsigned int overlay_out_enabled; TYPE_1__* fmt_out; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int can_do_overlay; } ;


 int EINVAL ;
 int dprintk (struct vivid_dev*,int,char*) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_vid_out_overlay(struct file *file, void *fh, unsigned i)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (i && !dev->fmt_out->can_do_overlay) {
  dprintk(dev, 1, "unsupported output format for output overlay\n");
  return -EINVAL;
 }

 dev->overlay_out_enabled = i;
 return 0;
}
