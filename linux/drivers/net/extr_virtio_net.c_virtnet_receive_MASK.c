#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct virtnet_rq_stats {int packets; } ;
struct virtnet_info {int /*<<< orphan*/  refill; scalar_t__ mergeable_rx_bufs; int /*<<< orphan*/  big_packets; } ;
struct TYPE_8__ {int /*<<< orphan*/  syncp; } ;
struct receive_queue {TYPE_2__ stats; TYPE_3__* vq; } ;
struct TYPE_10__ {size_t offset; } ;
struct TYPE_9__ {int num_free; TYPE_1__* vdev; } ;
struct TYPE_7__ {struct virtnet_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int VIRTNET_RQ_STATS_LEN ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtnet_info*,struct receive_queue*,void*,unsigned int,void*,unsigned int*,struct virtnet_rq_stats*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtnet_info*,struct receive_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_6__* virtnet_rq_stats_desc ; 
 void* FUNC6 (TYPE_3__*,unsigned int*) ; 
 void* FUNC7 (TYPE_3__*,unsigned int*,void**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct receive_queue *rq, int budget,
			   unsigned int *xdp_xmit)
{
	struct virtnet_info *vi = rq->vq->vdev->priv;
	struct virtnet_rq_stats stats = {};
	unsigned int len;
	void *buf;
	int i;

	if (!vi->big_packets || vi->mergeable_rx_bufs) {
		void *ctx;

		while (stats.packets < budget &&
		       (buf = FUNC7(rq->vq, &len, &ctx))) {
			FUNC1(vi, rq, buf, len, ctx, xdp_xmit, &stats);
			stats.packets++;
		}
	} else {
		while (stats.packets < budget &&
		       (buf = FUNC6(rq->vq, &len)) != NULL) {
			FUNC1(vi, rq, buf, len, NULL, xdp_xmit, &stats);
			stats.packets++;
		}
	}

	if (rq->vq->num_free > FUNC0((unsigned int)budget, FUNC8(rq->vq)) / 2) {
		if (!FUNC3(vi, rq, GFP_ATOMIC))
			FUNC2(&vi->refill, 0);
	}

	FUNC4(&rq->stats.syncp);
	for (i = 0; i < VIRTNET_RQ_STATS_LEN; i++) {
		size_t offset = virtnet_rq_stats_desc[i].offset;
		u64 *item;

		item = (u64 *)((u8 *)&rq->stats + offset);
		*item += *(u64 *)((u8 *)&stats + offset);
	}
	FUNC5(&rq->stats.syncp);

	return stats.packets;
}