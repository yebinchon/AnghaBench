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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct de4x5_private {int txRingSize; TYPE_2__ cache; TYPE_1__* tx_ring; scalar_t__* tx_skb; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct de4x5_private*,int) ; 
 struct de4x5_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC2(dev);
    int i;

    for (i=0; i<lp->txRingSize; i++) {
	if (lp->tx_skb[i])
	    FUNC1(lp, i);
	lp->tx_ring[i].status = 0;
    }

    /* Unload the locally queued packets */
    FUNC0(&lp->cache.queue);
}