#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {unsigned int irq; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct et131x_adapter {int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; TYPE_1__ error_timer; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TX_ERROR_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  et131x_error_timer_handler ; 
 int /*<<< orphan*/  et131x_isr ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct et131x_adapter* FUNC5 (struct net_device*) ; 
 int FUNC6 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC5(netdev);
	struct pci_dev *pdev = adapter->pdev;
	unsigned int irq = pdev->irq;
	int result;

	/* Start the timer to track NIC errors */
	FUNC7(&adapter->error_timer, et131x_error_timer_handler, 0);
	adapter->error_timer.expires = jiffies +
		FUNC3(TX_ERROR_PERIOD);
	FUNC0(&adapter->error_timer);

	result = FUNC6(irq, et131x_isr,
			     IRQF_SHARED, netdev->name, netdev);
	if (result) {
		FUNC1(&pdev->dev, "could not register IRQ %d\n", irq);
		return result;
	}

	adapter->flags |= FMP_ADAPTER_INTERRUPT_IN_USE;

	FUNC4(&adapter->napi);

	FUNC2(netdev);

	return result;
}