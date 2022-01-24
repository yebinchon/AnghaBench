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
struct kaweth_device {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_STATUS_SUSPENDING ; 
 int /*<<< orphan*/  FUNC0 (struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct kaweth_device* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, pm_message_t message)
{
	struct kaweth_device *kaweth = FUNC3(intf);
	unsigned long flags;

	FUNC1(&kaweth->device_lock, flags);
	kaweth->status |= KAWETH_STATUS_SUSPENDING;
	FUNC2(&kaweth->device_lock, flags);

	FUNC0(kaweth);
	return 0;
}