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
struct urb {int status; struct tx_agg* context; } ;
struct tx_agg {int /*<<< orphan*/  list; scalar_t__ skb_len; scalar_t__ skb_num; struct r8152* context; } ;
struct r8152 {int /*<<< orphan*/  tx_tl; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  flags; int /*<<< orphan*/  intf; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_free; struct net_device* netdev; } ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	struct net_device_stats *stats;
	struct net_device *netdev;
	struct tx_agg *agg;
	struct r8152 *tp;
	unsigned long flags;
	int status = urb->status;

	agg = urb->context;
	if (!agg)
		return;

	tp = agg->context;
	if (!tp)
		return;

	netdev = tp->netdev;
	stats = &netdev->stats;
	if (status) {
		if (FUNC1())
			FUNC2(netdev, "Tx status %d\n", status);
		stats->tx_errors += agg->skb_num;
	} else {
		stats->tx_packets += agg->skb_num;
		stats->tx_bytes += agg->skb_len;
	}

	FUNC5(&tp->tx_lock, flags);
	FUNC0(&agg->list, &tp->tx_free);
	FUNC6(&tp->tx_lock, flags);

	FUNC9(tp->intf);

	if (!FUNC3(netdev))
		return;

	if (!FUNC8(WORK_ENABLE, &tp->flags))
		return;

	if (FUNC8(RTL8152_UNPLUG, &tp->flags))
		return;

	if (!FUNC4(&tp->tx_queue))
		FUNC7(&tp->tx_tl);
}