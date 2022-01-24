#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sh_eth_private {scalar_t__ ether_link_active_low; scalar_t__ no_ether_link; TYPE_3__* cd; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_6__ {scalar_t__ no_psr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECSIPR ; 
 int /*<<< orphan*/  ECSR ; 
 int ECSR_ICD ; 
 int ECSR_LCHNG ; 
 int ECSR_MPD ; 
 int /*<<< orphan*/  EESIPR ; 
 int /*<<< orphan*/  EESIPR_ECIIP ; 
 int PHY_ST_LINK ; 
 int /*<<< orphan*/  PSR ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	u32 felic_stat;
	u32 link_stat;

	felic_stat = FUNC5(ndev, ECSR) & FUNC5(ndev, ECSIPR);
	FUNC6(ndev, felic_stat, ECSR);	/* clear int */
	if (felic_stat & ECSR_ICD)
		ndev->stats.tx_carrier_errors++;
	if (felic_stat & ECSR_MPD)
		FUNC1(&mdp->pdev->dev, 0);
	if (felic_stat & ECSR_LCHNG) {
		/* Link Changed */
		if (mdp->cd->no_psr || mdp->no_ether_link)
			return;
		link_stat = FUNC5(ndev, PSR);
		if (mdp->ether_link_active_low)
			link_stat = ~link_stat;
		if (!(link_stat & PHY_ST_LINK)) {
			FUNC3(ndev);
		} else {
			/* Link Up */
			FUNC2(ndev, EESIPR, EESIPR_ECIIP, 0);
			/* clear int */
			FUNC2(ndev, ECSR, 0, 0);
			FUNC2(ndev, EESIPR, EESIPR_ECIIP, EESIPR_ECIIP);
			/* enable tx and rx */
			FUNC4(ndev);
		}
	}
}