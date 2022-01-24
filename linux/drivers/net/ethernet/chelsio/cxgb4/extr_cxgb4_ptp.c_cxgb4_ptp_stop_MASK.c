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
struct adapter {int /*<<< orphan*/ * ptp_clock; int /*<<< orphan*/ * ptp_tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct adapter *adapter)
{
	if (adapter->ptp_tx_skb) {
		FUNC0(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
	}

	if (adapter->ptp_clock) {
		FUNC1(adapter->ptp_clock);
		adapter->ptp_clock = NULL;
	}
}