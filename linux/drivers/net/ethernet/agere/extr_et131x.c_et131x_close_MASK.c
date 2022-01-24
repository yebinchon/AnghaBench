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
struct et131x_adapter {int /*<<< orphan*/  error_timer; TYPE_1__* pdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMP_ADAPTER_INTERRUPT_IN_USE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct et131x_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC4(netdev);

	FUNC1(netdev);
	FUNC3(&adapter->napi);

	adapter->flags &= ~FMP_ADAPTER_INTERRUPT_IN_USE;
	FUNC2(adapter->pdev->irq, netdev);

	/* Stop the error timer */
	return FUNC0(&adapter->error_timer);
}