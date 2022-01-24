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
struct xgene_enet_pdata {TYPE_1__* port_ops; int /*<<< orphan*/  phy_mode; scalar_t__ mdio_driver; struct net_device* ndev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct xgene_enet_pdata*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct xgene_enet_pdata* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct xgene_enet_pdata *pdata;
	struct net_device *ndev;

	pdata = FUNC4(pdev);
	ndev = pdata->ndev;

	FUNC5();
	if (FUNC2(ndev))
		FUNC0(ndev);
	FUNC6();

	if (pdata->mdio_driver)
		FUNC11(pdata);
	else if (FUNC3(pdata->phy_mode))
		FUNC10(pdata);

	FUNC8(ndev);
	FUNC9(pdata);
	pdata->port_ops->shutdown(pdata);
	FUNC1(ndev);

	return 0;
}