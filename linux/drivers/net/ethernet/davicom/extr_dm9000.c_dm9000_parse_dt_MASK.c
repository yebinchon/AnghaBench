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
struct dm9000_plat_data {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  flags; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  DM9000_PLATF_EXT_PHY ; 
 int /*<<< orphan*/  DM9000_PLATF_NO_EEPROM ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 struct dm9000_plat_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 struct dm9000_plat_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device_node*) ; 

__attribute__((used)) static struct dm9000_plat_data *FUNC7(struct device *dev)
{
	struct dm9000_plat_data *pdata;
	struct device_node *np = dev->of_node;
	const void *mac_addr;

	if (!FUNC1(CONFIG_OF) || !np)
		return FUNC0(-ENXIO);

	pdata = FUNC3(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return FUNC0(-ENOMEM);

	if (FUNC5(np, "davicom,ext-phy", NULL))
		pdata->flags |= DM9000_PLATF_EXT_PHY;
	if (FUNC5(np, "davicom,no-eeprom", NULL))
		pdata->flags |= DM9000_PLATF_NO_EEPROM;

	mac_addr = FUNC6(np);
	if (!FUNC2(mac_addr))
		FUNC4(pdata->dev_addr, mac_addr);

	return pdata;
}