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
struct pvr2_v4l2_fh {int /*<<< orphan*/  rhp; int /*<<< orphan*/  wait_data; scalar_t__ fw_mode_flag; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pvr2_v4l2_fh*) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table *wait)
{
	__poll_t mask = 0;
	struct pvr2_v4l2_fh *fh = file->private_data;
	int ret;

	if (fh->fw_mode_flag) {
		mask |= EPOLLIN | EPOLLRDNORM;
		return mask;
	}

	if (!fh->rhp) {
		ret = FUNC2(fh);
		if (ret) return EPOLLERR;
	}

	FUNC0(file,&fh->wait_data,wait);

	if (FUNC1(fh->rhp) >= 0) {
		mask |= EPOLLIN | EPOLLRDNORM;
	}

	return mask;
}