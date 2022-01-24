#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ digital; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; } ;
struct emac_adapter {TYPE_3__ phy; int /*<<< orphan*/  mii_bus; TYPE_2__* phydev; TYPE_4__ rx_q; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ mdio; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct emac_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device *netdev = FUNC0(&pdev->dev);
	struct emac_adapter *adpt = FUNC5(netdev);

	FUNC8(netdev);
	FUNC6(&adpt->rx_q.napi);

	FUNC1(adpt);

	FUNC7(&adpt->phydev->mdio.dev);
	FUNC4(adpt->mii_bus);
	FUNC2(netdev);

	if (adpt->phy.digital)
		FUNC3(adpt->phy.digital);
	FUNC3(adpt->phy.base);

	return 0;
}