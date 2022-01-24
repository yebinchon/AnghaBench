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
struct netfront_queue {int /*<<< orphan*/  napi; } ;
struct netfront_info {struct netfront_queue* queues; int /*<<< orphan*/  netdev; } ;
struct net_device {unsigned int real_num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct netfront_info *np = FUNC1(dev);
	unsigned int num_queues = dev->real_num_tx_queues;
	unsigned int i;
	struct netfront_queue *queue;
	FUNC2(np->netdev);
	for (i = 0; i < num_queues; ++i) {
		queue = &np->queues[i];
		FUNC0(&queue->napi);
	}
	return 0;
}