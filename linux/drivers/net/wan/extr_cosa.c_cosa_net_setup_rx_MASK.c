#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct channel_data {int /*<<< orphan*/ * rx_skb; TYPE_2__* netdev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC5(struct channel_data *chan, int size)
{
	/*
	 * We can safely fall back to non-dma-able memory, because we have
	 * the cosa->bouncebuf pre-allocated.
	 */
	FUNC1(chan->rx_skb);
	chan->rx_skb = FUNC0(size);
	if (chan->rx_skb == NULL) {
		FUNC3("%s: Memory squeeze, dropping packet\n", chan->name);
		chan->netdev->stats.rx_dropped++;
		return NULL;
	}
	FUNC2(chan->netdev);
	return FUNC4(chan->rx_skb, size);
}