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
struct otx2_mbox_dev {scalar_t__ num_msgs; scalar_t__ msgs_acked; } ;
struct otx2_mbox {struct otx2_mbox_dev* dev; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

int FUNC2(struct otx2_mbox *mbox, int devid)
{
	struct otx2_mbox_dev *mdev = &mbox->dev[devid];
	unsigned long timeout = jiffies + 1 * HZ;

	while (!FUNC1(jiffies, timeout)) {
		if (mdev->num_msgs == mdev->msgs_acked)
			return 0;
		FUNC0();
	}
	return -EIO;
}