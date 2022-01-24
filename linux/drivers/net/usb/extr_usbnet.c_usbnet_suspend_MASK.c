#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ qlen; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_1__ txq; int /*<<< orphan*/  flags; int /*<<< orphan*/  suspend_count; } ;
struct usb_interface {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbnet*) ; 

int FUNC9 (struct usb_interface *intf, pm_message_t message)
{
	struct usbnet		*dev = FUNC7(intf);

	if (!dev->suspend_count++) {
		FUNC5(&dev->txq.lock);
		/* don't autosuspend while transmitting */
		if (dev->txq.qlen && FUNC0(message)) {
			dev->suspend_count--;
			FUNC6(&dev->txq.lock);
			return -EBUSY;
		} else {
			FUNC4(EVENT_DEV_ASLEEP, &dev->flags);
			FUNC6(&dev->txq.lock);
		}
		/*
		 * accelerate emptying of the rx and queues, to avoid
		 * having everything error out.
		 */
		FUNC3 (dev->net);
		FUNC8(dev);
		FUNC1(dev);

		/*
		 * reattach so runtime management can use and
		 * wake the device
		 */
		FUNC2 (dev->net);
	}
	return 0;
}