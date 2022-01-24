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
struct virtnet_info {int max_queue_pairs; TYPE_1__* sq; TYPE_2__* rq; int /*<<< orphan*/  refill; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct virtnet_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct virtnet_info *vi = FUNC2(dev);
	int i;

	/* Make sure refill_work doesn't re-enable napi! */
	FUNC0(&vi->refill);

	for (i = 0; i < vi->max_queue_pairs; i++) {
		FUNC4(&vi->rq[i].xdp_rxq);
		FUNC1(&vi->rq[i].napi);
		FUNC3(&vi->sq[i].napi);
	}

	return 0;
}