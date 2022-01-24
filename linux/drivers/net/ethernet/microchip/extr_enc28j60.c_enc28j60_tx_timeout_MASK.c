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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct enc28j60_net {int /*<<< orphan*/  restart_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct enc28j60_net* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct enc28j60_net *priv = FUNC1(ndev);

	if (FUNC2(priv))
		FUNC0(ndev, "tx timeout\n");

	ndev->stats.tx_errors++;
	/* can't restart safely under softirq */
	FUNC3(&priv->restart_work);
}