
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viu_fh {scalar_t__ dev; } ;
struct viu_dev {int ovenable; int slock; int vr; } ;
struct file {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int viu_activate_overlay (int ) ;
 int viu_start_dma (struct viu_dev*) ;
 int viu_stop_dma (struct viu_dev*) ;

__attribute__((used)) static int vidioc_overlay(struct file *file, void *priv, unsigned int on)
{
 struct viu_fh *fh = priv;
 struct viu_dev *dev = (struct viu_dev *)fh->dev;
 unsigned long flags;

 if (on) {
  spin_lock_irqsave(&dev->slock, flags);
  viu_activate_overlay(dev->vr);
  dev->ovenable = 1;


  viu_start_dma(dev);
  spin_unlock_irqrestore(&dev->slock, flags);
 } else {
  viu_stop_dma(dev);
  dev->ovenable = 0;
 }

 return 0;
}
