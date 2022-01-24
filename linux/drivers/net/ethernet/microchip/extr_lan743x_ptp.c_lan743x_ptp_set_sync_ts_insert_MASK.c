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
typedef  int /*<<< orphan*/  u32 ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_TX_MOD ; 
 int /*<<< orphan*/  PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_ ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lan743x_adapter *adapter,
					   bool ts_insert_enable)
{
	u32 ptp_tx_mod = FUNC0(adapter, PTP_TX_MOD);

	if (ts_insert_enable)
		ptp_tx_mod |= PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_;
	else
		ptp_tx_mod &= ~PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_;

	FUNC1(adapter, PTP_TX_MOD, ptp_tx_mod);
}