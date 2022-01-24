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
struct mwifiex_adapter {scalar_t__ irq_wakeup; scalar_t__ wake_by_wifi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct mwifiex_adapter *adapter)
{
	if (adapter->irq_wakeup >= 0) {
		FUNC1(adapter->irq_wakeup);
		FUNC0(adapter->irq_wakeup);
		if (adapter->wake_by_wifi)
			/* Undo our disable, since interrupt handler already
			 * did this.
			 */
			FUNC2(adapter->irq_wakeup);

	}
}