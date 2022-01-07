
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int lock; } ;


 int ERESTARTSYS ;
 int check_dev (struct cx231xx*) ;
 int cx231xx_videodbg (char*,unsigned long,unsigned long,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int res_get (struct cx231xx_fh*) ;
 scalar_t__ unlikely (int) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int cx231xx_v4l2_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct cx231xx_fh *fh = filp->private_data;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 rc = res_get(fh);

 if (unlikely(rc < 0))
  return rc;

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;
 rc = videobuf_mmap_mapper(&fh->vb_vidq, vma);
 mutex_unlock(&dev->lock);

 cx231xx_videodbg("vma start=0x%08lx, size=%ld, ret=%d\n",
    (unsigned long)vma->vm_start,
    (unsigned long)vma->vm_end -
    (unsigned long)vma->vm_start, rc);

 return rc;
}
