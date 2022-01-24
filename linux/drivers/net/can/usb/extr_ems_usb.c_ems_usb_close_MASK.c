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

/* Variables and functions */
 int /*<<< orphan*/  SJA1000_MOD_RM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ems_usb*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct ems_usb *dev = FUNC2(netdev);

	/* Stop polling */
	FUNC5(dev);

	FUNC4(netdev);

	/* Set CAN controller to reset mode */
	if (FUNC1(dev, SJA1000_MOD_RM))
		FUNC3(netdev, "couldn't stop device");

	FUNC0(netdev);

	return 0;
}