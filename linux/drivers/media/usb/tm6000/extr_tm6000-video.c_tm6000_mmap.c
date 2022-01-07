
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct tm6000_fh {int vb_vidq; struct tm6000_core* dev; } ;
struct tm6000_core {int lock; } ;
struct file {struct tm6000_fh* private_data; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int tm6000_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct tm6000_fh *fh = file->private_data;
 struct tm6000_core *dev = fh->dev;
 int res;

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;
 res = videobuf_mmap_mapper(&fh->vb_vidq, vma);
 mutex_unlock(&dev->lock);
 return res;
}
