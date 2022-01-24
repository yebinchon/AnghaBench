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
typedef  int /*<<< orphan*/  u32 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; struct hl_cb* vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_pgoff; } ;
struct hl_fpriv {int /*<<< orphan*/  cb_mgr; struct hl_device* hdev; } ;
struct hl_device {TYPE_1__* asic_funcs; int /*<<< orphan*/  dev; } ;
struct hl_cb {int mmap; int /*<<< orphan*/  lock; int /*<<< orphan*/  size; int /*<<< orphan*/  mmap_size; scalar_t__ kernel_address; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int (* cb_mmap ) (struct hl_device*,struct vm_area_struct*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  cb_vm_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct hl_cb* FUNC2 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hl_device*,struct vm_area_struct*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

int FUNC8(struct hl_fpriv *hpriv, struct vm_area_struct *vma)
{
	struct hl_device *hdev = hpriv->hdev;
	struct hl_cb *cb;
	phys_addr_t address;
	u32 handle;
	int rc;

	handle = vma->vm_pgoff;

	/* reference was taken here */
	cb = FUNC2(hdev, &hpriv->cb_mgr, handle);
	if (!cb) {
		FUNC1(hdev->dev,
			"CB mmap failed, no match to handle %d\n", handle);
		return -EINVAL;
	}

	/* Validation check */
	if ((vma->vm_end - vma->vm_start) != FUNC0(cb->size, PAGE_SIZE)) {
		FUNC1(hdev->dev,
			"CB mmap failed, mmap size 0x%lx != 0x%x cb size\n",
			vma->vm_end - vma->vm_start, cb->size);
		rc = -EINVAL;
		goto put_cb;
	}

	FUNC4(&cb->lock);

	if (cb->mmap) {
		FUNC1(hdev->dev,
			"CB mmap failed, CB already mmaped to user\n");
		rc = -EINVAL;
		goto release_lock;
	}

	cb->mmap = true;

	FUNC5(&cb->lock);

	vma->vm_ops = &cb_vm_ops;

	/*
	 * Note: We're transferring the cb reference to
	 * vma->vm_private_data here.
	 */

	vma->vm_private_data = cb;

	/* Calculate address for CB */
	address = FUNC7((void *) (uintptr_t) cb->kernel_address);

	rc = hdev->asic_funcs->cb_mmap(hdev, vma, cb->kernel_address,
					address, cb->size);

	if (rc) {
		FUNC4(&cb->lock);
		cb->mmap = false;
		goto release_lock;
	}

	cb->mmap_size = cb->size;

	return 0;

release_lock:
	FUNC5(&cb->lock);
put_cb:
	FUNC3(cb);
	return rc;
}