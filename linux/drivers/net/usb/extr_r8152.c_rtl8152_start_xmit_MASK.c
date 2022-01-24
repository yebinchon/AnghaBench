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
struct sk_buff {int dummy; } ;
struct r8152 {scalar_t__ tx_qlen; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  tx_tl; int /*<<< orphan*/  udev; int /*<<< orphan*/  schedule; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_free; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  SCHEDULE_TASKLET ; 
 int /*<<< orphan*/  SELECTIVE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
				      struct net_device *netdev)
{
	struct r8152 *tp = FUNC1(netdev);

	FUNC7(skb);

	FUNC6(&tp->tx_queue, skb);

	if (!FUNC0(&tp->tx_free)) {
		if (FUNC9(SELECTIVE_SUSPEND, &tp->flags)) {
			FUNC4(SCHEDULE_TASKLET, &tp->flags);
			FUNC3(&tp->schedule, 0);
		} else {
			FUNC10(tp->udev);
			FUNC8(&tp->tx_tl);
		}
	} else if (FUNC5(&tp->tx_queue) > tp->tx_qlen) {
		FUNC2(netdev);
	}

	return NETDEV_TX_OK;
}