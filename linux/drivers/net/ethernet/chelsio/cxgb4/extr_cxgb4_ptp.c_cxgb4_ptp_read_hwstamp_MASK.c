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
typedef  int u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct port_info {int /*<<< orphan*/  port_id; } ;
struct adapter {int /*<<< orphan*/  ptp_lock; int /*<<< orphan*/ * ptp_tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PORT_TX_TS_VAL_HI ; 
 int /*<<< orphan*/  MAC_PORT_TX_TS_VAL_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct skb_shared_hwtstamps* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC8(struct adapter *adapter, struct port_info *pi)
{
	struct skb_shared_hwtstamps *skb_ts = NULL;
	u64 tx_ts;

	skb_ts = FUNC3(adapter->ptp_tx_skb);

	tx_ts = FUNC7(adapter,
			    FUNC0(pi->port_id, MAC_PORT_TX_TS_VAL_LO));

	tx_ts |= (u64)FUNC7(adapter,
				  FUNC0(pi->port_id,
					      MAC_PORT_TX_TS_VAL_HI)) << 32;
	skb_ts->hwtstamp = FUNC2(tx_ts);
	FUNC4(adapter->ptp_tx_skb, skb_ts);
	FUNC1(adapter->ptp_tx_skb);
	FUNC5(&adapter->ptp_lock);
	adapter->ptp_tx_skb = NULL;
	FUNC6(&adapter->ptp_lock);
}