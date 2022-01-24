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
typedef  int u64 ;
struct niu {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MIF_STATUS ; 
 int NIU_FLAGS_XMAC ; 
 int /*<<< orphan*/  XRXMAC_STATUS ; 
 int XRXMAC_STATUS_PHY_MDINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct niu *np)
{
	u64 mif_status = FUNC1(MIF_STATUS);
	int phy_mdint = 0;

	if (np->flags & NIU_FLAGS_XMAC) {
		u64 xrxmac_stat = FUNC2(XRXMAC_STATUS);

		if (xrxmac_stat & XRXMAC_STATUS_PHY_MDINT)
			phy_mdint = 1;
	}

	FUNC0(np->dev, "MIF interrupt, stat[%llx] phy_mdint(%d)\n",
		   (unsigned long long)mif_status, phy_mdint);

	return -ENODEV;
}