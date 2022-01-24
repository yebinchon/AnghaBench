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
typedef  int u_long ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct de4x5_private {int rxRingSize; struct sk_buff** rx_skb; TYPE_1__* rx_ring; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC1(dev);
    int i;

    for (i=0; i<lp->rxRingSize; i++) {
	if ((u_long) lp->rx_skb[i] > 1) {
	    FUNC0(lp->rx_skb[i]);
	}
	lp->rx_ring[i].status = 0;
	lp->rx_skb[i] = (struct sk_buff *)1;    /* Dummy entry */
    }
}