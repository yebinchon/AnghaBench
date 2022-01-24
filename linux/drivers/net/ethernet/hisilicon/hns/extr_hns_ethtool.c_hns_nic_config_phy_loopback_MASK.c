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
typedef  scalar_t__ u8 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phy_dev, u8 en)
{
	int err;

	if (en) {
		/* Doing phy loopback in offline state, phy resuming is
		 * needed to power up the device.
		 */
		err = FUNC1(phy_dev);
		if (err)
			goto out;

		err = FUNC0(phy_dev, true);
	} else {
		err = FUNC0(phy_dev, false);
		if (err)
			goto out;

		err = FUNC2(phy_dev);
	}

out:
	return err;
}