#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct otx2_mbox_dev {struct mbox_hdr* mbase; } ;
struct otx2_mbox {int rx_start; struct otx2_mbox_dev* dev; } ;
struct mbox_wq_info {TYPE_2__* mbox_wrk_up; int /*<<< orphan*/  mbox_wq; struct otx2_mbox mbox_up; TYPE_1__* mbox_wrk; struct otx2_mbox mbox; } ;
struct mbox_hdr {scalar_t__ num_msgs; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mbox_wq_info *mw, int first,
			   int mdevs, u64 intr)
{
	struct otx2_mbox_dev *mdev;
	struct otx2_mbox *mbox;
	struct mbox_hdr *hdr;
	int i;

	for (i = first; i < mdevs; i++) {
		/* start from 0 */
		if (!(intr & FUNC0(i - first)))
			continue;

		mbox = &mw->mbox;
		mdev = &mbox->dev[i];
		hdr = mdev->mbase + mbox->rx_start;
		if (hdr->num_msgs)
			FUNC1(mw->mbox_wq, &mw->mbox_wrk[i].work);

		mbox = &mw->mbox_up;
		mdev = &mbox->dev[i];
		hdr = mdev->mbase + mbox->rx_start;
		if (hdr->num_msgs)
			FUNC1(mw->mbox_wq, &mw->mbox_wrk_up[i].work);
	}
}