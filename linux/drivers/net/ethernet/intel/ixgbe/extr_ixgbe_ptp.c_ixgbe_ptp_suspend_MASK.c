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
struct ixgbe_adapter {int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  (* ptp_setup_sdp ) (struct ixgbe_adapter*) ;int /*<<< orphan*/  flags2; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG2_PTP_PPS_ENABLED ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ixgbe_adapter *adapter)
{
	/* Leave the IXGBE_PTP_RUNNING state. */
	if (!FUNC3(__IXGBE_PTP_RUNNING, &adapter->state))
		return;

	adapter->flags2 &= ~IXGBE_FLAG2_PTP_PPS_ENABLED;
	if (adapter->ptp_setup_sdp)
		adapter->ptp_setup_sdp(adapter);

	/* ensure that we cancel any pending PTP Tx work item in progress */
	FUNC0(&adapter->ptp_tx_work);
	FUNC1(adapter);
}