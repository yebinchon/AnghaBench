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
struct TYPE_2__ {int /*<<< orphan*/  tx_timeouts; } ;
struct spider_net_card {TYPE_1__ spider_stats; int /*<<< orphan*/  tx_timeout_task_counter; int /*<<< orphan*/  tx_timeout_task; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct spider_net_card* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev)
{
	struct spider_net_card *card;

	card = FUNC2(netdev);
	FUNC1(&card->tx_timeout_task_counter);
	if (netdev->flags & IFF_UP)
		FUNC3(&card->tx_timeout_task);
	else
		FUNC0(&card->tx_timeout_task_counter);
	card->spider_stats.tx_timeouts++;
}