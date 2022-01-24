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
struct pxa168_eth_private {int /*<<< orphan*/  dev; } ;
struct mii_bus {struct pxa168_eth_private* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int PHY_WAIT_ITERATIONS ; 
 int /*<<< orphan*/  SMI ; 
 int SMI_OP_R ; 
 int SMI_R_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct pxa168_eth_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pxa168_eth_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy_addr, int regnum)
{
	struct pxa168_eth_private *pep = bus->priv;
	int i = 0;
	int val;

	if (FUNC3(pep)) {
		FUNC1(pep->dev, "pxa168_eth: SMI bus busy timeout\n");
		return -ETIMEDOUT;
	}
	FUNC4(pep, SMI, (phy_addr << 16) | (regnum << 21) | SMI_OP_R);
	/* now wait for the data to be valid */
	for (i = 0; !((val = FUNC2(pep, SMI)) & SMI_R_VALID); i++) {
		if (i == PHY_WAIT_ITERATIONS) {
			FUNC1(pep->dev,
				    "pxa168_eth: SMI bus read not valid\n");
			return -ENODEV;
		}
		FUNC0(10);
	}

	return val & 0xffff;
}