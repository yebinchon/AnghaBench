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
struct otx2_mbox_dev {scalar_t__ num_msgs; int /*<<< orphan*/  mbox_lock; } ;
struct otx2_mbox {struct otx2_mbox_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct otx2_mbox *mbox, int devid)
{
	struct otx2_mbox_dev *mdev = &mbox->dev[devid];
	bool ret;

	FUNC0(&mdev->mbox_lock);
	ret = mdev->num_msgs != 0;
	FUNC1(&mdev->mbox_lock);

	return ret;
}