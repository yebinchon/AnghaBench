
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viu_fh {int win; scalar_t__ dev; } ;
struct viu_dev {int slock; } ;
struct TYPE_2__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int verify_preview (struct viu_dev*,int *) ;
 int viu_setup_preview (struct viu_dev*,struct viu_fh*) ;

__attribute__((used)) static int vidioc_s_fmt_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct viu_fh *fh = priv;
 struct viu_dev *dev = (struct viu_dev *)fh->dev;
 unsigned long flags;
 int err;

 err = verify_preview(dev, &f->fmt.win);
 if (err)
  return err;

 fh->win = f->fmt.win;

 spin_lock_irqsave(&dev->slock, flags);
 viu_setup_preview(dev, fh);
 spin_unlock_irqrestore(&dev->slock, flags);
 return 0;
}
