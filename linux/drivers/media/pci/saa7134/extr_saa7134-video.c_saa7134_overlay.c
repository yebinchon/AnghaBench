
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {void* overlay_owner; int slock; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ saa7134_no_overlay ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_preview (struct saa7134_dev*) ;
 int stop_preview (struct saa7134_dev*) ;
 int video_dbg (char*) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int saa7134_overlay(struct file *file, void *priv, unsigned int on)
{
 struct saa7134_dev *dev = video_drvdata(file);
 unsigned long flags;

 if (on) {
  if (saa7134_no_overlay > 0) {
   video_dbg("no_overlay\n");
   return -EINVAL;
  }

  if (dev->overlay_owner && priv != dev->overlay_owner)
   return -EBUSY;
  dev->overlay_owner = priv;
  spin_lock_irqsave(&dev->slock, flags);
  start_preview(dev);
  spin_unlock_irqrestore(&dev->slock, flags);
 }
 if (!on) {
  if (priv != dev->overlay_owner)
   return -EINVAL;
  spin_lock_irqsave(&dev->slock, flags);
  stop_preview(dev);
  spin_unlock_irqrestore(&dev->slock, flags);
  dev->overlay_owner = ((void*)0);
 }
 return 0;
}
