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
struct virtnet_info {int max_queue_pairs; int curr_queue_pairs; TYPE_1__* sq; TYPE_2__* rq; int /*<<< orphan*/  refill; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEM_TYPE_PAGE_SHARED ; 
 struct virtnet_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtnet_info*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct net_device*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct virtnet_info *vi = FUNC0(dev);
	int i, err;

	for (i = 0; i < vi->max_queue_pairs; i++) {
		if (i < vi->curr_queue_pairs)
			/* Make sure we have some buffers: if oom use wq. */
			if (!FUNC2(vi, &vi->rq[i], GFP_KERNEL))
				FUNC1(&vi->refill, 0);

		err = FUNC5(&vi->rq[i].xdp_rxq, dev, i);
		if (err < 0)
			return err;

		err = FUNC6(&vi->rq[i].xdp_rxq,
						 MEM_TYPE_PAGE_SHARED, NULL);
		if (err < 0) {
			FUNC7(&vi->rq[i].xdp_rxq);
			return err;
		}

		FUNC3(vi->rq[i].vq, &vi->rq[i].napi);
		FUNC4(vi, vi->sq[i].vq, &vi->sq[i].napi);
	}

	return 0;
}