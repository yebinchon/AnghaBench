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
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct imon_context {int display_isopen; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  display_supported; } ;
struct file {struct imon_context* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  driver_lock ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  imon_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct usb_interface* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct imon_context* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct usb_interface *interface;
	struct imon_context *ictx = NULL;
	int subminor;
	int retval = 0;

	/* prevent races with disconnect */
	FUNC2(&driver_lock);

	subminor = FUNC1(inode);
	interface = FUNC5(&imon_driver, subminor);
	if (!interface) {
		FUNC4("could not find interface for minor %d\n", subminor);
		retval = -ENODEV;
		goto exit;
	}
	ictx = FUNC6(interface);

	if (!ictx) {
		FUNC4("no context found for minor %d\n", subminor);
		retval = -ENODEV;
		goto exit;
	}

	FUNC2(&ictx->lock);

	if (!ictx->display_supported) {
		FUNC4("display not supported by device\n");
		retval = -ENODEV;
	} else if (ictx->display_isopen) {
		FUNC4("display port is already open\n");
		retval = -EBUSY;
	} else {
		ictx->display_isopen = true;
		file->private_data = ictx;
		FUNC0(ictx->dev, "display port opened\n");
	}

	FUNC3(&ictx->lock);

exit:
	FUNC3(&driver_lock);
	return retval;
}