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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct xgene_enet_pdata {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int BUSY_MASK ; 
 int /*<<< orphan*/  MII_MGMT_ADDRESS_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_COMMAND_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_INDICATORS_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_STATUS_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int READ_CYCLE_MASK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC6(struct xgene_enet_pdata *p, u8 phy_id, u32 reg)
{
	u32 addr, data, done;
	int i;

	addr = FUNC0(phy_id) | FUNC1(reg);
	FUNC5(p, MII_MGMT_ADDRESS_ADDR, addr);
	FUNC5(p, MII_MGMT_COMMAND_ADDR, READ_CYCLE_MASK);

	for (i = 0; i < 10; i++) {
		done = FUNC4(p, MII_MGMT_INDICATORS_ADDR);
		if (!(done & BUSY_MASK)) {
			data = FUNC4(p, MII_MGMT_STATUS_ADDR);
			FUNC5(p, MII_MGMT_COMMAND_ADDR, 0);

			return data;
		}
		FUNC3(10, 20);
	}

	FUNC2(p->ndev, "MII_MGMT read failed\n");

	return 0;
}