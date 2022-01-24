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
struct net_device {int dummy; } ;
struct ionic_lif {scalar_t__ nxqs; int /*<<< orphan*/  state; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ tx_count; scalar_t__ rx_count; scalar_t__ other_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IONIC_LIF_QUEUE_RESET ; 
 int /*<<< orphan*/  IONIC_LIF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 struct ionic_lif* FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
			      struct ethtool_channels *ch)
{
	struct ionic_lif *lif = FUNC4(netdev);
	bool running;

	if (!ch->combined_count || ch->other_count ||
	    ch->rx_count || ch->tx_count)
		return -EINVAL;

	if (ch->combined_count == lif->nxqs)
		return 0;

	if (!FUNC3(lif, IONIC_LIF_QUEUE_RESET))
		return -EBUSY;

	running = FUNC5(IONIC_LIF_UP, lif->state);
	if (running)
		FUNC2(netdev);

	lif->nxqs = ch->combined_count;

	if (running)
		FUNC1(netdev);
	FUNC0(IONIC_LIF_QUEUE_RESET, lif->state);

	return 0;
}