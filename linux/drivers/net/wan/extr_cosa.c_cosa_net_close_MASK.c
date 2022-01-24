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
struct net_device {int dummy; } ;
struct channel_data {TYPE_1__* cosa; scalar_t__ usage; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct channel_data*) ; 
 struct channel_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct channel_data *chan = FUNC1(dev);
	unsigned long flags;

	FUNC4(dev);
	FUNC2(dev);
	FUNC0(chan);
	FUNC5(&chan->cosa->lock, flags);
	if (chan->rx_skb) {
		FUNC3(chan->rx_skb);
		chan->rx_skb = NULL;
	}
	if (chan->tx_skb) {
		FUNC3(chan->tx_skb);
		chan->tx_skb = NULL;
	}
	chan->usage = 0;
	chan->cosa->usage--;
	FUNC6(&chan->cosa->lock, flags);
	return 0;
}