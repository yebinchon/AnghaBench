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
struct ixgbe_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  test_icr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IXGBE_EICR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct net_device *netdev = (struct net_device *) data;
	struct ixgbe_adapter *adapter = FUNC1(netdev);

	adapter->test_icr |= FUNC0(&adapter->hw, IXGBE_EICR);

	return IRQ_HANDLED;
}