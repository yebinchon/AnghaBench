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
typedef  int /*<<< orphan*/  u8 ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct device*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

int FUNC5(struct device *dev, int slave, u8 *mac_addr)
{
	if (FUNC4("ti,dm8148"))
		return FUNC0(dev, 0x630, slave, mac_addr);

	if (FUNC4("ti,am33xx"))
		return FUNC0(dev, 0x630, slave, mac_addr);

	if (FUNC3(dev->of_node, "ti,am3517-emac"))
		return FUNC1(dev, 0x110, slave, mac_addr);

	if (FUNC3(dev->of_node, "ti,dm816-emac"))
		return FUNC0(dev, 0x30, slave, mac_addr);

	if (FUNC4("ti,am43"))
		return FUNC0(dev, 0x630, slave, mac_addr);

	if (FUNC4("ti,dra7"))
		return FUNC1(dev, 0x514, slave, mac_addr);

	FUNC2(dev, "incompatible machine/device type for reading mac address\n");
	return -ENOENT;
}