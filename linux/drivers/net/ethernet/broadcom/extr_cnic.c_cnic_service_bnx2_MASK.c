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
struct status_block {int status_idx; } ;
struct cnic_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int FUNC0 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *data, void *status_blk)
{
	struct cnic_dev *dev = data;

	if (FUNC2(!FUNC1(CNIC_F_CNIC_UP, &dev->flags))) {
		struct status_block *sblk = status_blk;

		return sblk->status_idx;
	}

	return FUNC0(dev);
}