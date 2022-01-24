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
struct hl_cs_parser {int /*<<< orphan*/  job_userptr_list; int /*<<< orphan*/  patched_cb; int /*<<< orphan*/  patched_cb_size; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  HL_KERNEL_ASID_ID ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hl_device*,struct hl_cs_parser*) ; 
 int FUNC3 (struct hl_device*,struct hl_cs_parser*,int) ; 
 int FUNC4 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hl_device *hdev,
				struct hl_cs_parser *parser)
{
	u64 patched_cb_handle;
	int rc;

	rc = FUNC3(hdev, parser, false);

	if (rc)
		goto free_userptr;

	rc = FUNC4(hdev, &hdev->kernel_cb_mgr,
				parser->patched_cb_size,
				&patched_cb_handle, HL_KERNEL_ASID_ID);
	if (rc) {
		FUNC1(hdev->dev,
			"Failed to allocate patched CB for DMA CS %d\n", rc);
		goto free_userptr;
	}

	patched_cb_handle >>= PAGE_SHIFT;
	parser->patched_cb = FUNC6(hdev, &hdev->kernel_cb_mgr,
				(u32) patched_cb_handle);
	/* hl_cb_get should never fail here so use kernel WARN */
	FUNC0(!parser->patched_cb, "DMA CB handle invalid 0x%x\n",
			(u32) patched_cb_handle);
	if (!parser->patched_cb) {
		rc = -EFAULT;
		goto out;
	}

	rc = FUNC2(hdev, parser);

	if (rc)
		FUNC7(parser->patched_cb);

out:
	/*
	 * Always call cb destroy here because we still have 1 reference
	 * to it by calling cb_get earlier. After the job will be completed,
	 * cb_put will release it, but here we want to remove it from the
	 * idr
	 */
	FUNC5(hdev, &hdev->kernel_cb_mgr,
				patched_cb_handle << PAGE_SHIFT);

free_userptr:
	if (rc)
		FUNC8(hdev, parser->job_userptr_list);
	return rc;
}