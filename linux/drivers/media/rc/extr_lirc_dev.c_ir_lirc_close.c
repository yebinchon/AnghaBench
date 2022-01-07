
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {scalar_t__ driver_type; int dev; int lirc_fh_lock; } ;
struct lirc_fh {int scancodes; int rawir; int list; struct rc_dev* rc; } ;
struct inode {int dummy; } ;
struct file {struct lirc_fh* private_data; } ;


 scalar_t__ RC_DRIVER_IR_RAW ;
 scalar_t__ RC_DRIVER_IR_RAW_TX ;
 int kfifo_free (int *) ;
 int kfree (struct lirc_fh*) ;
 int list_del (int *) ;
 int put_device (int *) ;
 int rc_close (struct rc_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ir_lirc_close(struct inode *inode, struct file *file)
{
 struct lirc_fh *fh = file->private_data;
 struct rc_dev *dev = fh->rc;
 unsigned long flags;

 spin_lock_irqsave(&dev->lirc_fh_lock, flags);
 list_del(&fh->list);
 spin_unlock_irqrestore(&dev->lirc_fh_lock, flags);

 if (dev->driver_type == RC_DRIVER_IR_RAW)
  kfifo_free(&fh->rawir);
 if (dev->driver_type != RC_DRIVER_IR_RAW_TX)
  kfifo_free(&fh->scancodes);
 kfree(fh);

 rc_close(dev);
 put_device(&dev->dev);

 return 0;
}
