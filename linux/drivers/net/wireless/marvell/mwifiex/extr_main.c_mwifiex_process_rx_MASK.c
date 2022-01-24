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
struct sk_buff {int dummy; } ;
struct mwifiex_rxinfo {scalar_t__ buf_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deaggr_pkt ) (struct mwifiex_adapter*,struct sk_buff*) ;int /*<<< orphan*/  (* submit_rem_rx_urbs ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {int rx_processing; int delay_main_work; scalar_t__ iface_type; int /*<<< orphan*/  rx_proc_lock; TYPE_1__ if_ops; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  rx_data_q; scalar_t__ rx_locked; } ;

/* Variables and functions */
 scalar_t__ LOW_RX_PENDING ; 
 struct mwifiex_rxinfo* FUNC0 (struct sk_buff*) ; 
 scalar_t__ MWIFIEX_TYPE_AGGR_DATA ; 
 scalar_t__ MWIFIEX_USB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_adapter*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct mwifiex_adapter *adapter)
{
	struct sk_buff *skb;
	struct mwifiex_rxinfo *rx_info;

	FUNC7(&adapter->rx_proc_lock);
	if (adapter->rx_processing || adapter->rx_locked) {
		FUNC8(&adapter->rx_proc_lock);
		goto exit_rx_proc;
	} else {
		adapter->rx_processing = true;
		FUNC8(&adapter->rx_proc_lock);
	}

	/* Check for Rx data */
	while ((skb = FUNC6(&adapter->rx_data_q))) {
		FUNC1(&adapter->rx_pending);
		if ((adapter->delay_main_work ||
		     adapter->iface_type == MWIFIEX_USB) &&
		    (FUNC2(&adapter->rx_pending) < LOW_RX_PENDING)) {
			if (adapter->if_ops.submit_rem_rx_urbs)
				adapter->if_ops.submit_rem_rx_urbs(adapter);
			adapter->delay_main_work = false;
			FUNC5(adapter);
		}
		rx_info = FUNC0(skb);
		if (rx_info->buf_type == MWIFIEX_TYPE_AGGR_DATA) {
			if (adapter->if_ops.deaggr_pkt)
				adapter->if_ops.deaggr_pkt(adapter, skb);
			FUNC3(skb);
		} else {
			FUNC4(adapter, skb);
		}
	}
	FUNC7(&adapter->rx_proc_lock);
	adapter->rx_processing = false;
	FUNC8(&adapter->rx_proc_lock);

exit_rx_proc:
	return 0;
}