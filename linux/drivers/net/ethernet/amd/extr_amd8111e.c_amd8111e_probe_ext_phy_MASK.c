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
struct net_device {int dummy; } ;
struct amd8111e_priv {int ext_phy_id; int ext_phy_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 scalar_t__ FUNC0 (struct amd8111e_priv*,int,int /*<<< orphan*/ ,int*) ; 
 struct amd8111e_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC1(dev);
	int i;

	for (i = 0x1e; i >= 0; i--) {
		u32 id1, id2;

		if (FUNC0(lp, i, MII_PHYSID1, &id1))
			continue;
		if (FUNC0(lp, i, MII_PHYSID2, &id2))
			continue;
		lp->ext_phy_id = (id1 << 16) | id2;
		lp->ext_phy_addr = i;
		return;
	}
	lp->ext_phy_id = 0;
	lp->ext_phy_addr = 1;
}