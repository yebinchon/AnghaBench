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
struct lan743x_ptp {scalar_t__ pending_tx_timestamps; int /*<<< orphan*/  tx_ts_lock; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;

/* Variables and functions */
 scalar_t__ LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct lan743x_adapter *adapter)
{
	struct lan743x_ptp *ptp = &adapter->ptp;
	bool result = false;

	FUNC0(&ptp->tx_ts_lock);
	if (ptp->pending_tx_timestamps < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS) {
		/* request granted */
		ptp->pending_tx_timestamps++;
		result = true;
	}
	FUNC1(&ptp->tx_ts_lock);
	return result;
}