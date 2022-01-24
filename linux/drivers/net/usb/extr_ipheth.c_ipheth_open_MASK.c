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
struct usb_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ipheth_device {int /*<<< orphan*/  carrier_work; struct usb_device* udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPHETH_ALT_INTFNUM ; 
 int /*<<< orphan*/  IPHETH_CARRIER_CHECK_TIMEOUT ; 
 int /*<<< orphan*/  IPHETH_INTFNUM ; 
 int FUNC0 (struct ipheth_device*) ; 
 int FUNC1 (struct ipheth_device*,int /*<<< orphan*/ ) ; 
 struct ipheth_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *net)
{
	struct ipheth_device *dev = FUNC2(net);
	struct usb_device *udev = dev->udev;
	int retval = 0;

	FUNC4(udev, IPHETH_INTFNUM, IPHETH_ALT_INTFNUM);

	retval = FUNC0(dev);
	if (retval)
		return retval;

	retval = FUNC1(dev, GFP_KERNEL);
	if (retval)
		return retval;

	FUNC3(&dev->carrier_work, IPHETH_CARRIER_CHECK_TIMEOUT);
	return retval;
}