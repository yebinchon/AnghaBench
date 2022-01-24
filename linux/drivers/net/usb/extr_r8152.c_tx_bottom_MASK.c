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
struct tx_agg {int /*<<< orphan*/  list; scalar_t__ skb_num; } ;
struct r8152 {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_free; struct net_device* netdev; int /*<<< orphan*/  tx_queue; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 struct tx_agg* FUNC3 (struct r8152*) ; 
 int FUNC4 (struct r8152*,struct tx_agg*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void FUNC9(struct r8152 *tp)
{
	int res;

	do {
		struct tx_agg *agg;

		if (FUNC6(&tp->tx_queue))
			break;

		agg = FUNC3(tp);
		if (!agg)
			break;

		res = FUNC4(tp, agg);
		if (res) {
			struct net_device *netdev = tp->netdev;

			if (res == -ENODEV) {
				FUNC5(tp);
				FUNC1(netdev);
			} else {
				struct net_device_stats *stats = &netdev->stats;
				unsigned long flags;

				FUNC2(tp, tx_err, netdev,
					   "failed tx_urb %d\n", res);
				stats->tx_dropped += agg->skb_num;

				FUNC7(&tp->tx_lock, flags);
				FUNC0(&agg->list, &tp->tx_free);
				FUNC8(&tp->tx_lock, flags);
			}
		}
	} while (res == 0);
}