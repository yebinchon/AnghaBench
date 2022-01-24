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
struct TYPE_3__ {int intr_mask; } ;
struct atl1c_adapter {TYPE_1__ hw; int /*<<< orphan*/  irq_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REG_IMR ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct atl1c_adapter *adapter)
{
	if (FUNC3(FUNC2(&adapter->irq_sem))) {
		FUNC1(&adapter->hw, REG_ISR, 0x7FFFFFFF);
		FUNC1(&adapter->hw, REG_IMR, adapter->hw.intr_mask);
		FUNC0(&adapter->hw);
	}
}