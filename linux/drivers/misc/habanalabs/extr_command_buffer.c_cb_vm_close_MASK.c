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
struct vm_area_struct {long vm_end; long vm_start; int /*<<< orphan*/ * vm_private_data; } ;
struct hl_cb {long mmap_size; int mmap; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_cb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct hl_cb *cb = (struct hl_cb *) vma->vm_private_data;
	long new_mmap_size;

	new_mmap_size = cb->mmap_size - (vma->vm_end - vma->vm_start);

	if (new_mmap_size > 0) {
		cb->mmap_size = new_mmap_size;
		return;
	}

	FUNC1(&cb->lock);
	cb->mmap = false;
	FUNC2(&cb->lock);

	FUNC0(cb);
	vma->vm_private_data = NULL;
}