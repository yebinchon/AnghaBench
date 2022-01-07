
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clipcount; int * clips; } ;
struct TYPE_3__ {TYPE_2__ win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_clip {int dummy; } ;
struct saa7134_dev {int nclips; void* overlay_owner; int slock; int clips; TYPE_2__ win; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ copy_from_user (int ,int *,int) ;
 int pr_err (char*) ;
 scalar_t__ saa7134_no_overlay ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_preview (struct saa7134_dev*) ;
 int stop_preview (struct saa7134_dev*) ;
 int verify_preview (struct saa7134_dev*,TYPE_2__*,int) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int saa7134_s_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct saa7134_dev *dev = video_drvdata(file);
 int err;
 unsigned long flags;

 if (saa7134_no_overlay > 0) {
  pr_err("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
  return -EINVAL;
 }
 if (f->fmt.win.clips == ((void*)0))
  f->fmt.win.clipcount = 0;
 err = verify_preview(dev, &f->fmt.win, 1);
 if (0 != err)
  return err;

 dev->win = f->fmt.win;
 dev->nclips = f->fmt.win.clipcount;

 if (copy_from_user(dev->clips, f->fmt.win.clips,
      sizeof(struct v4l2_clip) * dev->nclips))
  return -EFAULT;

 if (priv == dev->overlay_owner) {
  spin_lock_irqsave(&dev->slock, flags);
  stop_preview(dev);
  start_preview(dev);
  spin_unlock_irqrestore(&dev->slock, flags);
 }

 return 0;
}
