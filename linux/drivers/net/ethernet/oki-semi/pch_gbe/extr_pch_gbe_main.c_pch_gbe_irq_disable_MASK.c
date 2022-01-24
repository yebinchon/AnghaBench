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
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_sem; struct pch_gbe_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  INT_EN; int /*<<< orphan*/  INT_ST; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pch_gbe_adapter *adapter)
{
	struct pch_gbe_hw *hw = &adapter->hw;

	FUNC0(&adapter->irq_sem);
	FUNC2(0, &hw->reg->INT_EN);
	FUNC1(&hw->reg->INT_ST);
	FUNC4(adapter->irq);

	FUNC3(adapter->netdev, "INT_EN reg : 0x%08x\n",
		   FUNC1(&hw->reg->INT_EN));
}