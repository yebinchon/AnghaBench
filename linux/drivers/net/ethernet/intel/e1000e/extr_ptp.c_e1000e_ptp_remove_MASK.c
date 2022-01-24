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
struct e1000_adapter {int flags; int /*<<< orphan*/ * ptp_clock; int /*<<< orphan*/  systim_overflow_work; } ;

/* Variables and functions */
 int FLAG_HAS_HW_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct e1000_adapter *adapter)
{
	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
		return;

	FUNC0(&adapter->systim_overflow_work);

	if (adapter->ptp_clock) {
		FUNC2(adapter->ptp_clock);
		adapter->ptp_clock = NULL;
		FUNC1("removed PHC\n");
	}
}