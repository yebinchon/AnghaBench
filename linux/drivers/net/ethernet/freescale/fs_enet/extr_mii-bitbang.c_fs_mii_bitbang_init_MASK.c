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
typedef  int u32 ;
struct resource {int start; } ;
struct mii_bus {int /*<<< orphan*/  id; struct bb_info* priv; } ;
struct device_node {int dummy; } ;
struct bb_info {int mdio_msk; int mdc_msk; scalar_t__ dir; scalar_t__ dat; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int* FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, struct device_node *np)
{
	struct resource res;
	const u32 *data;
	int mdio_pin, mdc_pin, len;
	struct bb_info *bitbang = bus->priv;

	int ret = FUNC1(np, 0, &res);
	if (ret)
		return ret;

	if (FUNC3(&res) <= 13)
		return -ENODEV;

	/* This should really encode the pin number as well, but all
	 * we get is an int, and the odds of multiple bitbang mdio buses
	 * is low enough that it's not worth going too crazy.
	 */
	FUNC4(bus->id, MII_BUS_ID_SIZE, "%x", res.start);

	data = FUNC2(np, "fsl,mdio-pin", &len);
	if (!data || len != 4)
		return -ENODEV;
	mdio_pin = *data;

	data = FUNC2(np, "fsl,mdc-pin", &len);
	if (!data || len != 4)
		return -ENODEV;
	mdc_pin = *data;

	bitbang->dir = FUNC0(res.start, FUNC3(&res));
	if (!bitbang->dir)
		return -ENOMEM;

	bitbang->dat = bitbang->dir + 4;
	bitbang->mdio_msk = 1 << (31 - mdio_pin);
	bitbang->mdc_msk = 1 << (31 - mdc_pin);

	return 0;
}