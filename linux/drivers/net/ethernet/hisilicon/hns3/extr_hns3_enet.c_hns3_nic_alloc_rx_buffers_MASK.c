#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  non_reuse_pg; int /*<<< orphan*/  sw_err_cnt; int /*<<< orphan*/  reuse_pg_cnt; } ;
struct hns3_enet_ring {size_t next_to_use; TYPE_4__* tqp; int /*<<< orphan*/  syncp; TYPE_3__ stats; TYPE_2__* tqp_vector; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {scalar_t__ reuse_flag; } ;
struct TYPE_8__ {scalar_t__ io_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ napi; } ;

/* Variables and functions */
 scalar_t__ HNS3_RING_RX_RING_HEAD_REG ; 
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_ring*,size_t,struct hns3_desc_cb*) ; 
 int FUNC1 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct hns3_enet_ring *ring,
				      int cleand_count)
{
	struct hns3_desc_cb *desc_cb;
	struct hns3_desc_cb res_cbs;
	int i, ret;

	for (i = 0; i < cleand_count; i++) {
		desc_cb = &ring->desc_cb[ring->next_to_use];
		if (desc_cb->reuse_flag) {
			FUNC5(&ring->syncp);
			ring->stats.reuse_pg_cnt++;
			FUNC6(&ring->syncp);

			FUNC2(ring, ring->next_to_use);
		} else {
			ret = FUNC1(ring, &res_cbs);
			if (ret) {
				FUNC5(&ring->syncp);
				ring->stats.sw_err_cnt++;
				FUNC6(&ring->syncp);

				FUNC3(ring->tqp_vector->napi.dev,
					    "alloc rx buffer failed: %d\n",
					    ret);
				break;
			}
			FUNC0(ring, ring->next_to_use, &res_cbs);

			FUNC5(&ring->syncp);
			ring->stats.non_reuse_pg++;
			FUNC6(&ring->syncp);
		}

		FUNC4(ring, next_to_use);
	}

	FUNC7(); /* Make all data has been write before submit */
	FUNC8(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
}