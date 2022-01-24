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
struct stk1160 {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vb_queue_lock; int /*<<< orphan*/  v4l_lock; int /*<<< orphan*/ * udev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk1160*) ; 
 struct stk1160* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct stk1160 *dev;

	dev = FUNC4(interface);
	FUNC5(interface, NULL);

	/*
	 * Wait until all current v4l2 operation are finished
	 * then deallocate resources
	 */
	FUNC0(&dev->vb_queue_lock);
	FUNC0(&dev->v4l_lock);

	/* Here is the only place where isoc get released */
	FUNC3(dev);

	FUNC2(dev);

	FUNC8(&dev->vdev);
	FUNC6(&dev->v4l2_dev);

	/* This way current users can detect device is gone */
	dev->udev = NULL;

	FUNC1(&dev->v4l_lock);
	FUNC1(&dev->vb_queue_lock);

	/*
	 * This calls stk1160_release if it's the last reference.
	 * Otherwise, release is postponed until there are no users left.
	 */
	FUNC7(&dev->v4l2_dev);
}