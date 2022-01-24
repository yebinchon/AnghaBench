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
struct poll_table_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ rd_idx; scalar_t__ wr_idx; int /*<<< orphan*/  read_queue; } ;
struct TYPE_4__ {TYPE_1__ rds; } ;
struct fmdev {TYPE_2__ rx; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

int FUNC1(struct fmdev *fmdev, struct file *file,
				struct poll_table_struct *pts)
{
	FUNC0(file, &fmdev->rx.rds.read_queue, pts);
	if (fmdev->rx.rds.rd_idx != fmdev->rx.rds.wr_idx)
		return 0;

	return -EAGAIN;
}