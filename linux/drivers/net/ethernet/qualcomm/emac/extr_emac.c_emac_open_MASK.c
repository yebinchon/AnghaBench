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
struct net_device {int dummy; } ;
struct emac_irq {int /*<<< orphan*/  irq; } ;
struct emac_adapter {int /*<<< orphan*/  netdev; struct emac_irq irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  emac_isr ; 
 int FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_adapter*) ; 
 int FUNC4 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct emac_irq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct emac_adapter* FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct emac_irq*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev)
{
	struct emac_adapter *adpt = FUNC7(netdev);
	struct emac_irq	*irq = &adpt->irq;
	int ret;

	ret = FUNC8(irq->irq, emac_isr, 0, "emac-core0", irq);
	if (ret) {
		FUNC6(adpt->netdev, "could not request emac-core0 irq\n");
		return ret;
	}

	/* allocate rx/tx dma buffer & descriptors */
	ret = FUNC0(adpt);
	if (ret) {
		FUNC6(adpt->netdev, "error allocating rx/tx rings\n");
		FUNC5(irq->irq, irq);
		return ret;
	}

	ret = FUNC4(adpt);
	if (ret) {
		FUNC1(adpt);
		FUNC5(irq->irq, irq);
		return ret;
	}

	ret = FUNC2(adpt);
	if (ret) {
		FUNC1(adpt);
		FUNC5(irq->irq, irq);
		FUNC3(adpt);
		return ret;
	}

	return 0;
}