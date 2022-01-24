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
struct ifb_q_private {int txqnum; int /*<<< orphan*/  ifb_tasklet; int /*<<< orphan*/  tsync; int /*<<< orphan*/  rsync; int /*<<< orphan*/  tq; int /*<<< orphan*/  rq; struct net_device* dev; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifb_ri_tasklet ; 
 struct ifb_q_private* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 struct ifb_dev_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ifb_dev_private *dp = FUNC3(dev);
	struct ifb_q_private *txp;
	int i;

	txp = FUNC1(dev->num_tx_queues, sizeof(*txp), GFP_KERNEL);
	if (!txp)
		return -ENOMEM;
	dp->tx_private = txp;
	for (i = 0; i < dev->num_tx_queues; i++,txp++) {
		txp->txqnum = i;
		txp->dev = dev;
		FUNC0(&txp->rq);
		FUNC0(&txp->tq);
		FUNC6(&txp->rsync);
		FUNC6(&txp->tsync);
		FUNC5(&txp->ifb_tasklet, ifb_ri_tasklet,
			     (unsigned long)txp);
		FUNC4(FUNC2(dev, i));
	}
	return 0;
}