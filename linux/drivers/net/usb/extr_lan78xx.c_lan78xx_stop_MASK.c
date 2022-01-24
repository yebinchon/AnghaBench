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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; scalar_t__ phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; int /*<<< orphan*/  bh; int /*<<< orphan*/  wq; scalar_t__ flags; int /*<<< orphan*/  rxq_pause; int /*<<< orphan*/  urb_intr; int /*<<< orphan*/  net; int /*<<< orphan*/  stat_monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC3 (struct lan78xx_net*) ; 
 struct lan78xx_net* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *net)
{
	struct lan78xx_net *dev = FUNC4(net);

	if (FUNC10(&dev->stat_monitor))
		FUNC2(&dev->stat_monitor);

	if (net->phydev)
		FUNC7(net->phydev);

	FUNC1(EVENT_DEV_OPEN, &dev->flags);
	FUNC6(net);

	FUNC5(dev, ifdown, dev->net,
		   "stop stats: rx/tx %lu/%lu, errs %lu/%lu\n",
		   net->stats.rx_packets, net->stats.tx_packets,
		   net->stats.rx_errors, net->stats.tx_errors);

	FUNC3(dev);

	FUNC12(dev->urb_intr);

	FUNC8(&dev->rxq_pause);

	/* deferred work (task, timer, softirq) must also stop.
	 * can't flush_scheduled_work() until we drop rtnl (later),
	 * else workers could deadlock; so make workers a NOP.
	 */
	dev->flags = 0;
	FUNC0(&dev->wq);
	FUNC9(&dev->bh);

	FUNC11(dev->intf);

	return 0;
}