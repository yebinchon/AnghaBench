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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct be_adapter {int isr_registered; TYPE_1__* pdev; int /*<<< orphan*/ * eq_obj; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  be_intx ; 
 int FUNC0 (struct be_adapter*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int status;

	if (FUNC3(adapter)) {
		status = FUNC0(adapter);
		if (status == 0)
			goto done;
		/* INTx is not supported for VF */
		if (FUNC1(adapter))
			return status;
	}

	/* INTx: only the first EQ is used */
	netdev->irq = adapter->pdev->irq;
	status = FUNC4(netdev->irq, be_intx, IRQF_SHARED, netdev->name,
			     &adapter->eq_obj[0]);
	if (status) {
		FUNC2(&adapter->pdev->dev,
			"INTx request IRQ failed - err %d\n", status);
		return status;
	}
done:
	adapter->isr_registered = true;
	return 0;
}