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
struct packet_msg_prot {int dummy; } ;
struct hl_device {int /*<<< orphan*/  kernel_cb_mgr; int /*<<< orphan*/  dev; } ;
struct hl_cs_parser {scalar_t__ patched_cb_size; scalar_t__ user_cb_size; struct hl_cb* patched_cb; struct hl_cb* user_cb; } ;
struct hl_cb {scalar_t__ kernel_address; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  HL_KERNEL_ASID_ID ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct hl_device*,struct hl_cs_parser*,int) ; 
 int FUNC3 (struct hl_device*,int /*<<< orphan*/ *,scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,int /*<<< orphan*/ *,int) ; 
 struct hl_cb* FUNC5 (struct hl_device*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_cb*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct hl_device *hdev,
		struct hl_cs_parser *parser)
{
	u64 patched_cb_handle;
	u32 patched_cb_size;
	struct hl_cb *user_cb;
	int rc;

	/*
	 * The new CB should have space at the end for two MSG_PROT pkt:
	 * 1. A packet that will act as a completion packet
	 * 2. A packet that will generate MSI-X interrupt
	 */
	parser->patched_cb_size = parser->user_cb_size +
			sizeof(struct packet_msg_prot) * 2;

	rc = FUNC3(hdev, &hdev->kernel_cb_mgr,
				parser->patched_cb_size,
				&patched_cb_handle, HL_KERNEL_ASID_ID);

	if (rc) {
		FUNC1(hdev->dev,
			"Failed to allocate patched CB for DMA CS %d\n",
			rc);
		return rc;
	}

	patched_cb_handle >>= PAGE_SHIFT;
	parser->patched_cb = FUNC5(hdev, &hdev->kernel_cb_mgr,
				(u32) patched_cb_handle);
	/* hl_cb_get should never fail here so use kernel WARN */
	FUNC0(!parser->patched_cb, "DMA CB handle invalid 0x%x\n",
			(u32) patched_cb_handle);
	if (!parser->patched_cb) {
		rc = -EFAULT;
		goto out;
	}

	/*
	 * The check that parser->user_cb_size <= parser->user_cb->size was done
	 * in validate_queue_index().
	 */
	FUNC7((void *) (uintptr_t) parser->patched_cb->kernel_address,
		(void *) (uintptr_t) parser->user_cb->kernel_address,
		parser->user_cb_size);

	patched_cb_size = parser->patched_cb_size;

	/* validate patched CB instead of user CB */
	user_cb = parser->user_cb;
	parser->user_cb = parser->patched_cb;
	rc = FUNC2(hdev, parser, true);
	parser->user_cb = user_cb;

	if (rc) {
		FUNC6(parser->patched_cb);
		goto out;
	}

	if (patched_cb_size != parser->patched_cb_size) {
		FUNC1(hdev->dev, "user CB size mismatch\n");
		FUNC6(parser->patched_cb);
		rc = -EINVAL;
		goto out;
	}

out:
	/*
	 * Always call cb destroy here because we still have 1 reference
	 * to it by calling cb_get earlier. After the job will be completed,
	 * cb_put will release it, but here we want to remove it from the
	 * idr
	 */
	FUNC4(hdev, &hdev->kernel_cb_mgr,
					patched_cb_handle << PAGE_SHIFT);

	return rc;
}