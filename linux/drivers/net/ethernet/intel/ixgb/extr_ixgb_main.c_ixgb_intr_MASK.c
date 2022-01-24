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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int dummy; } ;
struct ixgb_adapter {int /*<<< orphan*/  napi; struct ixgb_hw hw; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IXGB_INT_LSC ; 
 int IXGB_INT_RXSEQ ; 
 int FUNC0 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGB_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct ixgb_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC8(int irq, void *data)
{
	struct net_device *netdev = data;
	struct ixgb_adapter *adapter = FUNC5(netdev);
	struct ixgb_hw *hw = &adapter->hw;
	u32 icr = FUNC0(hw, ICR);

	if (FUNC7(!icr))
		return IRQ_NONE;  /* Not our interrupt */

	if (FUNC7(icr & (IXGB_INT_RXSEQ | IXGB_INT_LSC)))
		if (!FUNC6(__IXGB_DOWN, &adapter->flags))
			FUNC3(&adapter->watchdog_timer, jiffies);

	if (FUNC4(&adapter->napi)) {

		/* Disable interrupts and register for poll. The flush
		  of the posted write is intentionally left out.
		*/

		FUNC1(&adapter->hw, IMC, ~0);
		FUNC2(&adapter->napi);
	}
	return IRQ_HANDLED;
}