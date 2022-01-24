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
struct net_device {scalar_t__ phydev; } ;
struct macb_queue {int /*<<< orphan*/  napi; } ;
struct macb {unsigned int num_queues; TYPE_2__* pdev; TYPE_1__* ptp_info; int /*<<< orphan*/  lock; struct macb_queue* queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ptp_remove ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macb*) ; 
 int /*<<< orphan*/  FUNC1 (struct macb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct macb* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct macb *bp = FUNC3(dev);
	struct macb_queue *queue;
	unsigned long flags;
	unsigned int q;

	FUNC5(dev);

	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue)
		FUNC2(&queue->napi);

	if (dev->phydev)
		FUNC6(dev->phydev);

	FUNC8(&bp->lock, flags);
	FUNC1(bp);
	FUNC4(dev);
	FUNC9(&bp->lock, flags);

	FUNC0(bp);

	if (bp->ptp_info)
		bp->ptp_info->ptp_remove(dev);

	FUNC7(&bp->pdev->dev);

	return 0;
}