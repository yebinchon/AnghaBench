#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath6kl_device {TYPE_3__* ar; TYPE_1__* htc_cnxt; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int block_size; int /*<<< orphan*/  htc_addr; } ;
struct TYPE_6__ {TYPE_2__ mbox_info; } ;
struct TYPE_4__ {int block_sz; int block_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HIF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath6kl_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath6kl_device *dev)
{
	int status = 0;

	FUNC3(&dev->lock);

	/*
	 * NOTE: we actually get the block size of a mailbox other than 0,
	 * for SDIO the block size on mailbox 0 is artificially set to 1.
	 * So we use the block size that is set for the other 3 mailboxes.
	 */
	dev->htc_cnxt->block_sz = dev->ar->mbox_info.block_size;

	/* must be a power of 2 */
	if ((dev->htc_cnxt->block_sz & (dev->htc_cnxt->block_sz - 1)) != 0) {
		FUNC0(1);
		status = -EINVAL;
		goto fail_setup;
	}

	/* assemble mask, used for padding to a block */
	dev->htc_cnxt->block_mask = dev->htc_cnxt->block_sz - 1;

	FUNC1(ATH6KL_DBG_HIF, "hif block size %d mbox addr 0x%x\n",
		   dev->htc_cnxt->block_sz, dev->ar->mbox_info.htc_addr);

	status = FUNC2(dev);

fail_setup:
	return status;
}