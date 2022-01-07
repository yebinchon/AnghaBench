
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vdev {int dummy; } ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_flags; int vm_page_prot; } ;
struct file {struct vop_vdev* private_data; } ;


 int EACCES ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_WRITE ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int vop_query_offset (struct vop_vdev*,unsigned long,unsigned long*,unsigned long*) ;
 int vop_vdev_inited (struct vop_vdev*) ;

__attribute__((used)) static int vop_mmap(struct file *f, struct vm_area_struct *vma)
{
 struct vop_vdev *vdev = f->private_data;
 unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
 unsigned long pa, size = vma->vm_end - vma->vm_start, size_rem = size;
 int i, err;

 err = vop_vdev_inited(vdev);
 if (err)
  goto ret;
 if (vma->vm_flags & VM_WRITE) {
  err = -EACCES;
  goto ret;
 }
 while (size_rem) {
  i = vop_query_offset(vdev, offset, &size, &pa);
  if (i < 0) {
   err = -EINVAL;
   goto ret;
  }
  err = remap_pfn_range(vma, vma->vm_start + offset,
          pa >> PAGE_SHIFT, size,
          vma->vm_page_prot);
  if (err)
   goto ret;
  size_rem -= size;
  offset += size;
 }
ret:
 return err;
}
