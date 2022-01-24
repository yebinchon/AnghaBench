#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;
struct emac_adapter {struct net_device* netdev; int /*<<< orphan*/  phydev; TYPE_1__ irq; scalar_t__ base; TYPE_2__ rx_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIS_INT ; 
 scalar_t__ EMAC_INT_MASK ; 
 scalar_t__ EMAC_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(struct emac_adapter *adpt)
{
	struct net_device *netdev = adpt->netdev;

	FUNC5(netdev);
	FUNC3(&adpt->rx_q.napi);

	FUNC7(adpt->phydev);

	/* Interrupts must be disabled before the PHY is disconnected, to
	 * avoid a race condition where adjust_link is null when we get
	 * an interrupt.
	 */
	FUNC9(DIS_INT, adpt->base + EMAC_INT_STATUS);
	FUNC9(0, adpt->base + EMAC_INT_MASK);
	FUNC8(adpt->irq.irq);

	FUNC6(adpt->phydev);

	FUNC0(adpt);

	FUNC2(adpt);
	FUNC4(adpt->netdev);
	FUNC1(adpt);
}