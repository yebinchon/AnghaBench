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
struct rc_dev {scalar_t__ driver_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  lirc_fh_lock; } ;
struct lirc_fh {int /*<<< orphan*/  scancodes; int /*<<< orphan*/  rawir; int /*<<< orphan*/  list; struct rc_dev* rc; } ;
struct inode {int dummy; } ;
struct file {struct lirc_fh* private_data; } ;

/* Variables and functions */
 scalar_t__ RC_DRIVER_IR_RAW ; 
 scalar_t__ RC_DRIVER_IR_RAW_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lirc_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct lirc_fh *fh = file->private_data;
	struct rc_dev *dev = fh->rc;
	unsigned long flags;

	FUNC5(&dev->lirc_fh_lock, flags);
	FUNC2(&fh->list);
	FUNC6(&dev->lirc_fh_lock, flags);

	if (dev->driver_type == RC_DRIVER_IR_RAW)
		FUNC0(&fh->rawir);
	if (dev->driver_type != RC_DRIVER_IR_RAW_TX)
		FUNC0(&fh->scancodes);
	FUNC1(fh);

	FUNC4(dev);
	FUNC3(&dev->dev);

	return 0;
}