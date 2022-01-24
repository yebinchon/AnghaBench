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
struct peak_usb_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct peak_usb_device* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct peak_usb_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, enum can_mode mode)
{
	struct peak_usb_device *dev = FUNC1(netdev);
	int err = 0;

	switch (mode) {
	case CAN_MODE_START:
		err = FUNC2(dev);
		if (err)
			FUNC0(netdev, "couldn't start device (err %d)\n",
				   err);
		break;

	default:
		return -EOPNOTSUPP;
	}

	return err;
}