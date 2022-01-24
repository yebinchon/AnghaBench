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
struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 struct phy_device* FUNC1 (struct mii_bus*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 scalar_t__ FUNC3 (struct phy_device*) ; 

struct phy_device *FUNC4(struct mii_bus *bus, int phy_addr)
{
	struct phy_device *phy_dev;

	phy_dev = FUNC1(bus, phy_addr, false);
	if (!phy_dev || FUNC0(phy_dev))
		return NULL;

	if (FUNC3(phy_dev))
		FUNC2(phy_dev);

	return phy_dev;
}