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
struct ems_usb {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SJA1000_MOD_RM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ems_usb*) ; 
 int FUNC2 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct ems_usb *dev = FUNC3(netdev);
	int err;

	err = FUNC2(dev, SJA1000_MOD_RM);
	if (err)
		return err;

	/* common open */
	err = FUNC7(netdev);
	if (err)
		return err;

	/* finally start device */
	err = FUNC1(dev);
	if (err) {
		if (err == -ENODEV)
			FUNC5(dev->netdev);

		FUNC4(netdev, "couldn't start device: %d\n", err);

		FUNC0(netdev);

		return err;
	}


	FUNC6(netdev);

	return 0;
}