#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lan9303 {int phy_addr_base; TYPE_1__* ds; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  phys_mii_mask; int /*<<< orphan*/ * ops; struct lan9303* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int LAN9303_NUM_PORTS ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lan9303_switch_ops ; 

__attribute__((used)) static int FUNC3(struct lan9303 *chip)
{
	int base;

	chip->ds = FUNC2(chip->dev, LAN9303_NUM_PORTS);
	if (!chip->ds)
		return -ENOMEM;

	chip->ds->priv = chip;
	chip->ds->ops = &lan9303_switch_ops;
	base = chip->phy_addr_base;
	chip->ds->phys_mii_mask = FUNC0(LAN9303_NUM_PORTS - 1 + base, base);

	return FUNC1(chip->ds);
}