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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdio_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  DATA ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  MAC_MDIOSCAR ; 
 int /*<<< orphan*/  MAC_MDIOSCCDR ; 
 int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct xgbe_prv_data *pdata, int addr,
				  int reg)
{
	unsigned int mdio_sca, mdio_sccd;

	FUNC4(&pdata->mdio_complete);

	mdio_sca = FUNC6(addr, reg);
	FUNC1(pdata, MAC_MDIOSCAR, mdio_sca);

	mdio_sccd = 0;
	FUNC2(mdio_sccd, MAC_MDIOSCCDR, CMD, 3);
	FUNC2(mdio_sccd, MAC_MDIOSCCDR, BUSY, 1);
	FUNC1(pdata, MAC_MDIOSCCDR, mdio_sccd);

	if (!FUNC5(&pdata->mdio_complete, HZ)) {
		FUNC3(pdata->netdev, "mdio read operation timed out\n");
		return -ETIMEDOUT;
	}

	return FUNC0(pdata, MAC_MDIOSCCDR, DATA);
}