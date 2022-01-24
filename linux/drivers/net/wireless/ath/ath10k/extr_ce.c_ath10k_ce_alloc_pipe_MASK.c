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
struct ce_attr {scalar_t__ dest_nentries; scalar_t__ src_nentries; int /*<<< orphan*/  recv_cb; int /*<<< orphan*/  send_cb; int /*<<< orphan*/  src_sz_max; int /*<<< orphan*/  flags; } ;
struct ath10k_ce_pipe {int id; int /*<<< orphan*/ * dest_ring; TYPE_1__* ops; int /*<<< orphan*/ * src_ring; int /*<<< orphan*/  recv_cb; int /*<<< orphan*/  send_cb; int /*<<< orphan*/  src_sz_max; int /*<<< orphan*/  attr_flags; int /*<<< orphan*/  ctrl_addr; struct ath10k* ar; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * (* ce_alloc_dst_ring ) (struct ath10k*,int,struct ce_attr const*) ;int /*<<< orphan*/ * (* ce_alloc_src_ring ) (struct ath10k*,int,struct ce_attr const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CE_HTT_H2T_MSG_SRC_NENTRIES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int TARGET_10_4_NUM_MSDU_DESC_PFC ; 
 int TARGET_NUM_MSDU_DESC ; 
 int TARGET_TLV_NUM_MSDU_DESC ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int) ; 
 struct ath10k_ce* FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct ath10k_ce_pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct ath10k*,int,struct ce_attr const*) ; 
 int /*<<< orphan*/ * FUNC8 (struct ath10k*,int,struct ce_attr const*) ; 

int FUNC9(struct ath10k *ar, int ce_id,
			 const struct ce_attr *attr)
{
	struct ath10k_ce *ce = FUNC4(ar);
	struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
	int ret;

	FUNC5(ar, ce_state);
	/* Make sure there's enough CE ringbuffer entries for HTT TX to avoid
	 * additional TX locking checks.
	 *
	 * For the lack of a better place do the check here.
	 */
	FUNC0(2 * TARGET_NUM_MSDU_DESC >
		     (CE_HTT_H2T_MSG_SRC_NENTRIES - 1));
	FUNC0(2 * TARGET_10_4_NUM_MSDU_DESC_PFC >
		     (CE_HTT_H2T_MSG_SRC_NENTRIES - 1));
	FUNC0(2 * TARGET_TLV_NUM_MSDU_DESC >
		     (CE_HTT_H2T_MSG_SRC_NENTRIES - 1));

	ce_state->ar = ar;
	ce_state->id = ce_id;
	ce_state->ctrl_addr = FUNC3(ar, ce_id);
	ce_state->attr_flags = attr->flags;
	ce_state->src_sz_max = attr->src_sz_max;

	if (attr->src_nentries)
		ce_state->send_cb = attr->send_cb;

	if (attr->dest_nentries)
		ce_state->recv_cb = attr->recv_cb;

	if (attr->src_nentries) {
		ce_state->src_ring =
			ce_state->ops->ce_alloc_src_ring(ar, ce_id, attr);
		if (FUNC1(ce_state->src_ring)) {
			ret = FUNC2(ce_state->src_ring);
			FUNC6(ar, "failed to alloc CE src ring %d: %d\n",
				   ce_id, ret);
			ce_state->src_ring = NULL;
			return ret;
		}
	}

	if (attr->dest_nentries) {
		ce_state->dest_ring = ce_state->ops->ce_alloc_dst_ring(ar,
									ce_id,
									attr);
		if (FUNC1(ce_state->dest_ring)) {
			ret = FUNC2(ce_state->dest_ring);
			FUNC6(ar, "failed to alloc CE dest ring %d: %d\n",
				   ce_id, ret);
			ce_state->dest_ring = NULL;
			return ret;
		}
	}

	return 0;
}