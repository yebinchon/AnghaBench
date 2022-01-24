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
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  test_icr; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *data)
{
	struct igb_adapter *adapter = (struct igb_adapter *) data;
	struct e1000_hw *hw = &adapter->hw;

	adapter->test_icr |= FUNC0(E1000_ICR);

	return IRQ_HANDLED;
}