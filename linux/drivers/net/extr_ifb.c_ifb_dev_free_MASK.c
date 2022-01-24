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
struct net_device {int num_tx_queues; } ;
struct ifb_q_private {int /*<<< orphan*/  tq; int /*<<< orphan*/  rq; int /*<<< orphan*/  ifb_tasklet; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifb_q_private*) ; 
 struct ifb_dev_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ifb_dev_private *dp = FUNC2(dev);
	struct ifb_q_private *txp = dp->tx_private;
	int i;

	for (i = 0; i < dev->num_tx_queues; i++,txp++) {
		FUNC3(&txp->ifb_tasklet);
		FUNC0(&txp->rq);
		FUNC0(&txp->tq);
	}
	FUNC1(dp->tx_private);
}