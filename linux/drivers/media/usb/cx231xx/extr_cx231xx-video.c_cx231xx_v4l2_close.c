
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int lock; } ;


 int cx231xx_close (struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cx231xx_v4l2_close(struct file *filp)
{
 struct cx231xx_fh *fh = filp->private_data;
 struct cx231xx *dev = fh->dev;
 int rc;

 mutex_lock(&dev->lock);
 rc = cx231xx_close(filp);
 mutex_unlock(&dev->lock);
 return rc;
}
