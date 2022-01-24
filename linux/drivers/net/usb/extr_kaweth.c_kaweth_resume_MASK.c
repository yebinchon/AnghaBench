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
struct kaweth_device {int /*<<< orphan*/  opened; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  KAWETH_STATUS_SUSPENDING ; 
 int /*<<< orphan*/  FUNC0 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct kaweth_device* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct kaweth_device *kaweth = FUNC4(intf);
	unsigned long flags;

	FUNC2(&kaweth->device_lock, flags);
	kaweth->status &= ~KAWETH_STATUS_SUSPENDING;
	FUNC3(&kaweth->device_lock, flags);

	if (!kaweth->opened)
		return 0;
	FUNC1(kaweth, GFP_NOIO);
	FUNC0(kaweth, GFP_NOIO);

	return 0;
}