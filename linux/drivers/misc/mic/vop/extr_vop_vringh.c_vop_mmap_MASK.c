#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vop_vdev {int dummy; } ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct file {struct vop_vdev* private_data; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int VM_WRITE ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vop_vdev*,unsigned long,unsigned long*,unsigned long*) ; 
 int FUNC2 (struct vop_vdev*) ; 

__attribute__((used)) static int FUNC3(struct file *f, struct vm_area_struct *vma)
{
	struct vop_vdev *vdev = f->private_data;
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
	unsigned long pa, size = vma->vm_end - vma->vm_start, size_rem = size;
	int i, err;

	err = FUNC2(vdev);
	if (err)
		goto ret;
	if (vma->vm_flags & VM_WRITE) {
		err = -EACCES;
		goto ret;
	}
	while (size_rem) {
		i = FUNC1(vdev, offset, &size, &pa);
		if (i < 0) {
			err = -EINVAL;
			goto ret;
		}
		err = FUNC0(vma, vma->vm_start + offset,
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