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
struct net_device {struct i596_private* ml_priv; } ;
struct i596_rbd {int /*<<< orphan*/ * skb; } ;
struct i596_private {struct i596_rbd* rbds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int rx_ring_size ; 

__attribute__((used)) static inline void FUNC1(struct net_device *dev)
{
	struct i596_private *lp = dev->ml_priv;
	struct i596_rbd *rbd;
	int i;

	for (i = 0, rbd = lp->rbds; i < rx_ring_size; i++, rbd++) {
		if (rbd->skb == NULL)
			break;
		FUNC0(rbd->skb);
		rbd->skb = NULL;
	}
}