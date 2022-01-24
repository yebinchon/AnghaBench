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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  kernel_cb_mgr; int /*<<< orphan*/  dev; } ;
struct hl_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HL_KERNEL_ASID_ID ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*,int /*<<< orphan*/ *,int) ; 
 struct hl_cb* FUNC4 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct hl_cb *FUNC5(struct hl_device *hdev, u32 cb_size)
{
	u64 cb_handle;
	struct hl_cb *cb;
	int rc;

	rc = FUNC2(hdev, &hdev->kernel_cb_mgr, cb_size, &cb_handle,
			HL_KERNEL_ASID_ID);
	if (rc) {
		FUNC1(hdev->dev,
			"Failed to allocate CB for the kernel driver %d\n", rc);
		return NULL;
	}

	cb_handle >>= PAGE_SHIFT;
	cb = FUNC4(hdev, &hdev->kernel_cb_mgr, (u32) cb_handle);
	/* hl_cb_get should never fail here so use kernel WARN */
	FUNC0(!cb, "Kernel CB handle invalid 0x%x\n", (u32) cb_handle);
	if (!cb)
		goto destroy_cb;

	return cb;

destroy_cb:
	FUNC3(hdev, &hdev->kernel_cb_mgr, cb_handle << PAGE_SHIFT);

	return NULL;
}