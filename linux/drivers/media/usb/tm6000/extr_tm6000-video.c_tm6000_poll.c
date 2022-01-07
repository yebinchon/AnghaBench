
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {int lock; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct tm6000_fh* private_data; } ;
typedef int __poll_t ;


 int __tm6000_poll (struct file*,struct poll_table_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static __poll_t tm6000_poll(struct file *file, struct poll_table_struct *wait)
{
 struct tm6000_fh *fh = file->private_data;
 struct tm6000_core *dev = fh->dev;
 __poll_t res;

 mutex_lock(&dev->lock);
 res = __tm6000_poll(file, wait);
 mutex_unlock(&dev->lock);
 return res;
}
