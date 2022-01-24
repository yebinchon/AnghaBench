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
struct timer_list {int dummy; } ;
struct ntb_netdev {int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  qp; struct net_device* ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct ntb_netdev* dev ; 
 struct ntb_netdev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ tx_stop ; 
 int /*<<< orphan*/  tx_time ; 
 int /*<<< orphan*/  tx_timer ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct ntb_netdev *dev = FUNC0(dev, t, tx_timer);
	struct net_device *ndev = dev->ndev;

	if (FUNC4(dev->qp) < tx_stop) {
		FUNC1(&dev->tx_timer, jiffies + FUNC6(tx_time));
	} else {
		/* Make sure anybody stopping the queue after this sees the new
		 * value of ntb_transport_tx_free_entry()
		 */
		FUNC5();
		if (FUNC2(ndev))
			FUNC3(ndev);
	}
}