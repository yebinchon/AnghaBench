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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_cb_mgr {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cb_handles; } ;
struct hl_cb {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  cb_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct hl_cb* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct hl_device *hdev, struct hl_cb_mgr *mgr, u64 cb_handle)
{
	struct hl_cb *cb;
	u32 handle;
	int rc = 0;

	/*
	 * handle was given to user to do mmap, I need to shift it back to
	 * how the idr module gave it to me
	 */
	cb_handle >>= PAGE_SHIFT;
	handle = (u32) cb_handle;

	FUNC4(&mgr->cb_lock);

	cb = FUNC1(&mgr->cb_handles, handle);
	if (cb) {
		FUNC2(&mgr->cb_handles, handle);
		FUNC5(&mgr->cb_lock);
		FUNC3(&cb->refcount, cb_release);
	} else {
		FUNC5(&mgr->cb_lock);
		FUNC0(hdev->dev,
			"CB destroy failed, no match to handle 0x%x\n", handle);
		rc = -EINVAL;
	}

	return rc;
}