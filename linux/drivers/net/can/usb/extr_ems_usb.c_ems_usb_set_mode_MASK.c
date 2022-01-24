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
struct net_device {int dummy; } ;
struct ems_usb {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SJA1000_MOD_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, enum can_mode mode)
{
	struct ems_usb *dev = FUNC1(netdev);

	switch (mode) {
	case CAN_MODE_START:
		if (FUNC0(dev, SJA1000_MOD_NORMAL))
			FUNC2(netdev, "couldn't start device");

		if (FUNC3(netdev))
			FUNC4(netdev);
		break;

	default:
		return -EOPNOTSUPP;
	}

	return 0;
}