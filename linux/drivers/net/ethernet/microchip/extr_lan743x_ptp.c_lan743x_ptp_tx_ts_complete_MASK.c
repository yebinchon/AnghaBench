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
typedef  int u32 ;
typedef  int /*<<< orphan*/  tstamps ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct lan743x_ptp {int tx_ts_skb_queue_size; int tx_ts_queue_size; int tx_ts_ignore_sync_queue; int* tx_ts_nseconds_queue; int* tx_ts_seconds_queue; int* tx_ts_header_queue; int pending_tx_timestamps; int /*<<< orphan*/  tx_ts_lock; struct sk_buff** tx_ts_skb_queue; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS ; 
 int PTP_TX_MSG_HEADER_MSG_TYPE_ ; 
 int PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_ ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct lan743x_adapter *adapter)
{
	struct lan743x_ptp *ptp = &adapter->ptp;
	struct skb_shared_hwtstamps tstamps;
	u32 header, nseconds, seconds;
	bool ignore_sync = false;
	struct sk_buff *skb;
	int c, i;

	FUNC5(&ptp->tx_ts_lock);
	c = ptp->tx_ts_skb_queue_size;

	if (c > ptp->tx_ts_queue_size)
		c = ptp->tx_ts_queue_size;
	if (c <= 0)
		goto done;

	for (i = 0; i < c; i++) {
		ignore_sync = ((ptp->tx_ts_ignore_sync_queue &
				FUNC0(i)) != 0);
		skb = ptp->tx_ts_skb_queue[i];
		nseconds = ptp->tx_ts_nseconds_queue[i];
		seconds = ptp->tx_ts_seconds_queue[i];
		header = ptp->tx_ts_header_queue[i];

		FUNC3(&tstamps, 0, sizeof(tstamps));
		tstamps.hwtstamp = FUNC2(seconds, nseconds);
		if (!ignore_sync ||
		    ((header & PTP_TX_MSG_HEADER_MSG_TYPE_) !=
		    PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_))
			FUNC4(skb, &tstamps);

		FUNC1(skb);

		ptp->tx_ts_skb_queue[i] = NULL;
		ptp->tx_ts_seconds_queue[i] = 0;
		ptp->tx_ts_nseconds_queue[i] = 0;
		ptp->tx_ts_header_queue[i] = 0;
	}

	/* shift queue */
	ptp->tx_ts_ignore_sync_queue >>= c;
	for (i = c; i < LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS; i++) {
		ptp->tx_ts_skb_queue[i - c] = ptp->tx_ts_skb_queue[i];
		ptp->tx_ts_seconds_queue[i - c] = ptp->tx_ts_seconds_queue[i];
		ptp->tx_ts_nseconds_queue[i - c] = ptp->tx_ts_nseconds_queue[i];
		ptp->tx_ts_header_queue[i - c] = ptp->tx_ts_header_queue[i];

		ptp->tx_ts_skb_queue[i] = NULL;
		ptp->tx_ts_seconds_queue[i] = 0;
		ptp->tx_ts_nseconds_queue[i] = 0;
		ptp->tx_ts_header_queue[i] = 0;
	}
	ptp->tx_ts_skb_queue_size -= c;
	ptp->tx_ts_queue_size -= c;
done:
	ptp->pending_tx_timestamps -= c;
	FUNC6(&ptp->tx_ts_lock);
}