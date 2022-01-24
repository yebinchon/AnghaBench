#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_pgoff; int vm_flags; struct ocxl_afu* vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; } ;
struct TYPE_2__ {int global_mmio_size; } ;
struct ocxl_afu {TYPE_1__ config; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int /*<<< orphan*/  global_mmio_vmops ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocxl_afu* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC4(struct file *filp, struct kobject *kobj,
			struct bin_attribute *bin_attr,
			struct vm_area_struct *vma)
{
	struct ocxl_afu *afu = FUNC2(FUNC0(kobj));

	if ((FUNC3(vma) + vma->vm_pgoff) >
		(afu->config.global_mmio_size >> PAGE_SHIFT))
		return -EINVAL;

	vma->vm_flags |= VM_IO | VM_PFNMAP;
	vma->vm_page_prot = FUNC1(vma->vm_page_prot);
	vma->vm_ops = &global_mmio_vmops;
	vma->vm_private_data = afu;
	return 0;
}