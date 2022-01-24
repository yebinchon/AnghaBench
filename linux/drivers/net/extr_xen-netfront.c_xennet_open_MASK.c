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
struct TYPE_4__ {scalar_t__ rsp_cons; TYPE_1__* sring; } ;
struct netfront_queue {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  napi; TYPE_2__ rx; } ;
struct netfront_info {struct netfront_queue* queues; } ;
struct net_device {unsigned int real_num_tx_queues; } ;
struct TYPE_3__ {scalar_t__ rsp_event; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_queue*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct netfront_info *np = FUNC3(dev);
	unsigned int num_queues = dev->real_num_tx_queues;
	unsigned int i = 0;
	struct netfront_queue *queue = NULL;

	if (!np->queues)
		return -ENODEV;

	for (i = 0; i < num_queues; ++i) {
		queue = &np->queues[i];
		FUNC1(&queue->napi);

		FUNC6(&queue->rx_lock);
		if (FUNC4(dev)) {
			FUNC8(queue);
			queue->rx.sring->rsp_event = queue->rx.rsp_cons + 1;
			if (FUNC0(&queue->rx))
				FUNC2(&queue->napi);
		}
		FUNC7(&queue->rx_lock);
	}

	FUNC5(dev);

	return 0;
}