#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; } ;
struct TYPE_6__ {int /*<<< orphan*/  mask; } ;
struct emac_adapter {TYPE_5__ rx_q; TYPE_2__* phydev; scalar_t__ base; TYPE_1__ irq; struct net_device* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ DIS_INT ; 
 scalar_t__ EMAC_INT_MASK ; 
 scalar_t__ EMAC_INT_STATUS ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int /*<<< orphan*/  emac_adjust_link ; 
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct net_device*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC10(struct emac_adapter *adpt)
{
	struct net_device *netdev = adpt->netdev;
	int ret;

	FUNC2(adpt);
	FUNC0(adpt);
	FUNC1(adpt, &adpt->rx_q);

	adpt->phydev->irq = PHY_POLL;
	ret = FUNC7(netdev, adpt->phydev, emac_adjust_link,
				 PHY_INTERFACE_MODE_SGMII);
	if (ret) {
		FUNC4(adpt->netdev, "could not connect phy\n");
		return ret;
	}

	FUNC6(adpt->phydev, NULL);

	/* enable mac irq */
	FUNC9((u32)~DIS_INT, adpt->base + EMAC_INT_STATUS);
	FUNC9(adpt->irq.mask, adpt->base + EMAC_INT_MASK);

	FUNC8(adpt->phydev);

	FUNC3(&adpt->rx_q.napi);
	FUNC5(netdev);

	return 0;
}