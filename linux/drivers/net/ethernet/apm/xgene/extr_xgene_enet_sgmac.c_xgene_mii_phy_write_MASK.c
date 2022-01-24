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
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_pdata {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int BUSY_MASK ; 
 int /*<<< orphan*/  MII_MGMT_ADDRESS_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_CONTROL_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_INDICATORS_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct xgene_enet_pdata *p, u8 phy_id,
				u32 reg, u16 data)
{
	u32 addr, wr_data, done;
	int i;

	addr = FUNC0(phy_id) | FUNC2(reg);
	FUNC6(p, MII_MGMT_ADDRESS_ADDR, addr);

	wr_data = FUNC1(data);
	FUNC6(p, MII_MGMT_CONTROL_ADDR, wr_data);

	for (i = 0; i < 10; i++) {
		done = FUNC5(p, MII_MGMT_INDICATORS_ADDR);
		if (!(done & BUSY_MASK))
			return;
		FUNC4(10, 20);
	}

	FUNC3(p->ndev, "MII_MGMT write failed\n");
}