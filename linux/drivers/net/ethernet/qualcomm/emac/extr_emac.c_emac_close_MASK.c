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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct emac_adapter {int /*<<< orphan*/  reset_lock; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct emac_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct emac_adapter *adpt = FUNC6(netdev);

	FUNC4(&adpt->reset_lock);

	FUNC2(adpt);
	FUNC0(adpt);
	FUNC1(adpt);

	FUNC3(adpt->irq.irq, &adpt->irq);

	FUNC5(&adpt->reset_lock);

	return 0;
}