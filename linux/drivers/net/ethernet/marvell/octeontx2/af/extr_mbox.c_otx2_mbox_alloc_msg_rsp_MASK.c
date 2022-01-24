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
struct otx2_mbox_dev {scalar_t__ msg_size; scalar_t__ rsp_size; int /*<<< orphan*/  mbox_lock; struct mbox_msghdr* mbase; scalar_t__ num_msgs; } ;
struct otx2_mbox {scalar_t__ tx_size; scalar_t__ rx_size; int tx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_msghdr {scalar_t__ next_msgoff; int /*<<< orphan*/  ver; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_MSG_ALIGN ; 
 int /*<<< orphan*/  OTX2_MBOX_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_msghdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ msgs_offset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mbox_msghdr *FUNC4(struct otx2_mbox *mbox, int devid,
					    int size, int size_rsp)
{
	struct otx2_mbox_dev *mdev = &mbox->dev[devid];
	struct mbox_msghdr *msghdr = NULL;

	FUNC2(&mdev->mbox_lock);
	size = FUNC0(size, MBOX_MSG_ALIGN);
	size_rsp = FUNC0(size_rsp, MBOX_MSG_ALIGN);
	/* Check if there is space in mailbox */
	if ((mdev->msg_size + size) > mbox->tx_size - msgs_offset)
		goto exit;
	if ((mdev->rsp_size + size_rsp) > mbox->rx_size - msgs_offset)
		goto exit;

	if (mdev->msg_size == 0)
		mdev->num_msgs = 0;
	mdev->num_msgs++;

	msghdr = mdev->mbase + mbox->tx_start + msgs_offset + mdev->msg_size;

	/* Clear the whole msg region */
	FUNC1(msghdr, 0, sizeof(*msghdr) + size);
	/* Init message header with reset values */
	msghdr->ver = OTX2_MBOX_VERSION;
	mdev->msg_size += size;
	mdev->rsp_size += size_rsp;
	msghdr->next_msgoff = mdev->msg_size + msgs_offset;
exit:
	FUNC3(&mdev->mbox_lock);

	return msghdr;
}