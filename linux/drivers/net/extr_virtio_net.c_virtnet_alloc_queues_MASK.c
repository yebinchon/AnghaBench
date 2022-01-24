#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virtnet_info {int max_queue_pairs; TYPE_4__* ctrl; TYPE_4__* sq; TYPE_2__* rq; int /*<<< orphan*/  dev; int /*<<< orphan*/  refill; } ;
struct TYPE_8__ {int /*<<< orphan*/  syncp; } ;
struct TYPE_9__ {TYPE_3__ stats; int /*<<< orphan*/  sg; int /*<<< orphan*/  napi; } ;
struct TYPE_6__ {int /*<<< orphan*/  syncp; } ;
struct TYPE_7__ {TYPE_1__ stats; int /*<<< orphan*/  mrg_avg_pkt_len; int /*<<< orphan*/  sg; int /*<<< orphan*/  napi; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ napi_tx ; 
 int /*<<< orphan*/  napi_weight ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  refill_work ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtnet_poll ; 
 int /*<<< orphan*/  virtnet_poll_tx ; 

__attribute__((used)) static int FUNC10(struct virtnet_info *vi)
{
	int i;

	vi->ctrl = FUNC5(sizeof(*vi->ctrl), GFP_KERNEL);
	if (!vi->ctrl)
		goto err_ctrl;
	vi->sq = FUNC3(vi->max_queue_pairs, sizeof(*vi->sq), GFP_KERNEL);
	if (!vi->sq)
		goto err_sq;
	vi->rq = FUNC3(vi->max_queue_pairs, sizeof(*vi->rq), GFP_KERNEL);
	if (!vi->rq)
		goto err_rq;

	FUNC1(&vi->refill, refill_work);
	for (i = 0; i < vi->max_queue_pairs; i++) {
		vi->rq[i].pages = NULL;
		FUNC6(vi->dev, &vi->rq[i].napi, virtnet_poll,
			       napi_weight);
		FUNC7(vi->dev, &vi->sq[i].napi, virtnet_poll_tx,
				  napi_tx ? napi_weight : 0);

		FUNC8(vi->rq[i].sg, FUNC0(vi->rq[i].sg));
		FUNC2(&vi->rq[i].mrg_avg_pkt_len);
		FUNC8(vi->sq[i].sg, FUNC0(vi->sq[i].sg));

		FUNC9(&vi->rq[i].stats.syncp);
		FUNC9(&vi->sq[i].stats.syncp);
	}

	return 0;

err_rq:
	FUNC4(vi->sq);
err_sq:
	FUNC4(vi->ctrl);
err_ctrl:
	return -ENOMEM;
}