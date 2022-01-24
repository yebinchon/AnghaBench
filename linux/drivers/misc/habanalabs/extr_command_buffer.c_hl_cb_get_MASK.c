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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_cb_mgr {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cb_handles; } ;
struct hl_cb {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct hl_cb* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct hl_cb *FUNC5(struct hl_device *hdev, struct hl_cb_mgr *mgr,
			u32 handle)
{
	struct hl_cb *cb;

	FUNC3(&mgr->cb_lock);
	cb = FUNC1(&mgr->cb_handles, handle);

	if (!cb) {
		FUNC4(&mgr->cb_lock);
		FUNC0(hdev->dev,
			"CB get failed, no match to handle %d\n", handle);
		return NULL;
	}

	FUNC2(&cb->refcount);

	FUNC4(&mgr->cb_lock);

	return cb;

}