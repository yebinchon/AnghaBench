#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sw_err_cnt; } ;
struct hns3_enet_ring {size_t next_to_use; size_t next_to_clean; scalar_t__ pending_buf; int /*<<< orphan*/ * skb; TYPE_5__* tqp; int /*<<< orphan*/  syncp; TYPE_2__ stats; TYPE_1__* desc_cb; } ;
struct hns3_desc_cb {int dummy; } ;
struct TYPE_10__ {TYPE_4__* handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  netdev; } ;
struct TYPE_9__ {TYPE_3__ kinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  reuse_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*,size_t,struct hns3_desc_cb*) ; 
 int FUNC2 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hns3_enet_ring *ring)
{
	struct hns3_desc_cb res_cbs;
	int ret;

	while (ring->next_to_use != ring->next_to_clean) {
		/* When a buffer is not reused, it's memory has been
		 * freed in hns3_handle_rx_bd or will be freed by
		 * stack, so we need to replace the buffer here.
		 */
		if (!ring->desc_cb[ring->next_to_use].reuse_flag) {
			ret = FUNC2(ring, &res_cbs);
			if (ret) {
				FUNC5(&ring->syncp);
				ring->stats.sw_err_cnt++;
				FUNC6(&ring->syncp);
				/* if alloc new buffer fail, exit directly
				 * and reclear in up flow.
				 */
				FUNC3(ring->tqp->handle->kinfo.netdev,
					    "reserve buffer map failed, ret = %d\n",
					    ret);
				return ret;
			}
			FUNC1(ring, ring->next_to_use, &res_cbs);
		}
		FUNC4(ring, next_to_use);
	}

	/* Free the pending skb in rx ring */
	if (ring->skb) {
		FUNC0(ring->skb);
		ring->skb = NULL;
		ring->pending_buf = 0;
	}

	return 0;
}