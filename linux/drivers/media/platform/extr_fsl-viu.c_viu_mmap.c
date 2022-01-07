
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct viu_fh {int vb_vidq; struct viu_dev* dev; } ;
struct viu_dev {int lock; } ;
struct file {struct viu_fh* private_data; } ;


 int ERESTARTSYS ;
 int dprintk (int,char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int viu_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct viu_fh *fh = file->private_data;
 struct viu_dev *dev = fh->dev;
 int ret;

 dprintk(1, "mmap called, vma=%p\n", vma);

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;
 ret = videobuf_mmap_mapper(&fh->vb_vidq, vma);
 mutex_unlock(&dev->lock);

 dprintk(1, "vma start=0x%08lx, size=%ld, ret=%d\n",
  (unsigned long)vma->vm_start,
  (unsigned long)vma->vm_end-(unsigned long)vma->vm_start,
  ret);

 return ret;
}
