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
struct cx231xx {scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_stream; int /*<<< orphan*/  wait_frame; scalar_t__ USE_ISO; int /*<<< orphan*/  vdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  open; int /*<<< orphan*/  state; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cx231xx* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct cx231xx *dev;

	dev = FUNC9(interface);
	FUNC10(interface, NULL);

	if (!dev)
		return;

	if (!dev->udev)
		return;

	dev->state |= DEV_DISCONNECTED;

	FUNC6(dev);

	/* wait until all current v4l2 io is finished then deallocate
	   resources */
	FUNC7(&dev->lock);

	FUNC13(&dev->open);

	if (dev->users) {
		FUNC5(dev->dev,
			 "device %s is open! Deregistration and memory deallocation are deferred on close.\n",
			 FUNC11(&dev->vdev));

		/* Even having users, it is safe to remove the RC i2c driver */
		FUNC1(dev);

		if (dev->USE_ISO)
			FUNC4(dev);
		else
			FUNC3(dev);
		FUNC12(&dev->wait_frame);
		FUNC12(&dev->wait_stream);
	} else {
	}

	FUNC0(dev);

	FUNC8(&dev->lock);

	if (!dev->users)
		FUNC2(dev);
}