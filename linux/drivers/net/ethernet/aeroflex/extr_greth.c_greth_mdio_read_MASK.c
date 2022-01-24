#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mii_bus {struct greth_private* priv; } ;
struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int EBUSY ; 
 int GRETH_MII_NVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct greth_private*) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int phy, int reg)
{
	struct greth_private *greth = bus->priv;
	int data;

	if (!FUNC2(greth))
		return -EBUSY;

	FUNC1(greth->regs->mdio, ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 2);

	if (!FUNC2(greth))
		return -EBUSY;

	if (!(FUNC0(greth->regs->mdio) & GRETH_MII_NVALID)) {
		data = (FUNC0(greth->regs->mdio) >> 16) & 0xFFFF;
		return data;

	} else {
		return -1;
	}
}