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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct i596_rbd {int /*<<< orphan*/ * skb; int /*<<< orphan*/  b_data; } ;
struct i596_private {TYPE_1__* dma; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct i596_rbd* rbds; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i596_private* FUNC3 (struct net_device*) ; 
 int rx_ring_size ; 

__attribute__((used)) static inline void FUNC4(struct net_device *dev)
{
	struct i596_private *lp = FUNC3(dev);
	struct i596_rbd *rbd;
	int i;

	for (i = 0, rbd = lp->dma->rbds; i < rx_ring_size; i++, rbd++) {
		if (rbd->skb == NULL)
			break;
		FUNC2(dev->dev.parent,
				 (dma_addr_t)FUNC0(rbd->b_data),
				 PKT_BUF_SZ, DMA_FROM_DEVICE);
		FUNC1(rbd->skb);
	}
}