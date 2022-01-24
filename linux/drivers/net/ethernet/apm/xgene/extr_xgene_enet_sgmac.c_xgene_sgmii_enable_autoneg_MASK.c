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
typedef  int u32 ;
struct xgene_enet_pdata {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int AUTO_NEG_COMPLETE ; 
 int /*<<< orphan*/  INT_PHY_ADDR ; 
 int LINK_STATUS ; 
 int SGMII_STATUS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static void FUNC4(struct xgene_enet_pdata *p)
{
	u32 data, loop = 10;

	FUNC3(p);

	while (loop--) {
		data = FUNC2(p, INT_PHY_ADDR,
					  SGMII_STATUS_ADDR >> 2);
		if ((data & AUTO_NEG_COMPLETE) && (data & LINK_STATUS))
			break;
		FUNC1(1000, 2000);
	}
	if (!(data & AUTO_NEG_COMPLETE) || !(data & LINK_STATUS))
		FUNC0(p->ndev, "Auto-negotiation failed\n");
}