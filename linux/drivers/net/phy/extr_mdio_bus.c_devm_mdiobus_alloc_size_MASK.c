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
struct mii_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  _devm_mdiobus_free ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct mii_bus**) ; 
 struct mii_bus** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus**) ; 
 struct mii_bus* FUNC3 (int) ; 

struct mii_bus *FUNC4(struct device *dev, int sizeof_priv)
{
	struct mii_bus **ptr, *bus;

	ptr = FUNC1(_devm_mdiobus_free, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	/* use raw alloc_dr for kmalloc caller tracing */
	bus = FUNC3(sizeof_priv);
	if (bus) {
		*ptr = bus;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return bus;
}