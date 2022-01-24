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
struct netfront_queue {int /*<<< orphan*/  id; TYPE_1__* info; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct netfront_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct netfront_queue *queue)
{
	struct net_device *dev = queue->info->netdev;
	struct netdev_queue *dev_queue = FUNC1(dev, queue->id);

	if (FUNC6(FUNC4(dev_queue)) &&
	    FUNC2(queue) &&
	    FUNC0(FUNC3(dev)))
		FUNC5(FUNC1(dev, queue->id));
}