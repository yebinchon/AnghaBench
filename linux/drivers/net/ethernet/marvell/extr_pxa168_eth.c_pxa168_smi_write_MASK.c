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
typedef  int u16 ;
struct pxa168_eth_private {int /*<<< orphan*/  dev; } ;
struct mii_bus {struct pxa168_eth_private* priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SMI ; 
 int SMI_OP_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct pxa168_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_addr, int regnum,
			    u16 value)
{
	struct pxa168_eth_private *pep = bus->priv;

	if (FUNC2(pep)) {
		FUNC1(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
		return -ETIMEDOUT;
	}

	FUNC3(pep, SMI, (phy_addr << 16) | (regnum << 21) |
	    SMI_OP_W | (value & 0xffff));

	if (FUNC2(pep)) {
		FUNC0(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}