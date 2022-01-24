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
typedef  int u16 ;
struct mii_bus {struct greth_private* priv; } ;
struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct greth_private*) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus, int phy, int reg, u16 val)
{
	struct greth_private *greth = bus->priv;

	if (!FUNC1(greth))
		return -EBUSY;

	FUNC0(greth->regs->mdio,
		      ((val & 0xFFFF) << 16) | ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 1);

	if (!FUNC1(greth))
		return -EBUSY;

	return 0;
}