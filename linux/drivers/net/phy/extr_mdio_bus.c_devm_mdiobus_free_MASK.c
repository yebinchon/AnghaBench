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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _devm_mdiobus_free ; 
 int /*<<< orphan*/  devm_mdiobus_match ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mii_bus*) ; 

void FUNC2(struct device *dev, struct mii_bus *bus)
{
	int rc;

	rc = FUNC1(dev, _devm_mdiobus_free,
			    devm_mdiobus_match, bus);
	FUNC0(rc);
}