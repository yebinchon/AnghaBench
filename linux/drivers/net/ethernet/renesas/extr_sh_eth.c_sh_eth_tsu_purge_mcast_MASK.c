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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsu; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int SH_ETH_TSU_CAM_ENTRIES ; 
 int /*<<< orphan*/  TSU_ADRH0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sh_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC1(ndev);
	u16 reg_offset = FUNC3(mdp, TSU_ADRH0);
	u8 addr[ETH_ALEN];
	int i;

	if (!mdp->cd->tsu)
		return;

	for (i = 0; i < SH_ETH_TSU_CAM_ENTRIES; i++, reg_offset += 8) {
		FUNC4(ndev, reg_offset, addr);
		if (FUNC0(addr))
			FUNC2(ndev, addr);
	}
}