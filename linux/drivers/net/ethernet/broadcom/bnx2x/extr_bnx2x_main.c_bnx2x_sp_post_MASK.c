#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {void* lo; void* hi; } ;
struct TYPE_6__ {TYPE_2__ update_data_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; void* conn_and_cmd_data; } ;
struct eth_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct bnx2x {int /*<<< orphan*/  spq_lock; int /*<<< orphan*/  eq_spq_left; int /*<<< orphan*/  cq_spq_left; scalar_t__ spq; scalar_t__ spq_prod_bd; int /*<<< orphan*/  spq_mapping; int /*<<< orphan*/  spq_prod_idx; int /*<<< orphan*/  panic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EIO ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int SPE_HDR_CMD_ID_SHIFT ; 
 int SPE_HDR_CONN_TYPE ; 
 int SPE_HDR_CONN_TYPE_SHIFT ; 
 int SPE_HDR_FUNCTION_ID ; 
 int SPE_HDR_FUNCTION_ID_SHIFT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct eth_spe* FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 void* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct bnx2x *bp, int command, int cid,
		  u32 data_hi, u32 data_lo, int cmd_type)
{
	struct eth_spe *spe;
	u16 type;
	bool common = FUNC8(command, cmd_type);

#ifdef BNX2X_STOP_ON_ERROR
	if (unlikely(bp->panic)) {
		BNX2X_ERR("Can't post SP when there is panic\n");
		return -EIO;
	}
#endif

	FUNC14(&bp->spq_lock);

	if (common) {
		if (!FUNC7(&bp->eq_spq_left)) {
			FUNC0("BUG! EQ ring full!\n");
			FUNC15(&bp->spq_lock);
			FUNC9();
			return -EBUSY;
		}
	} else if (!FUNC7(&bp->cq_spq_left)) {
			FUNC0("BUG! SPQ ring full!\n");
			FUNC15(&bp->spq_lock);
			FUNC9();
			return -EBUSY;
	}

	spe = FUNC10(bp);

	/* CID needs port number to be encoded int it */
	spe->hdr.conn_and_cmd_data =
			FUNC13((command << SPE_HDR_CMD_ID_SHIFT) |
				    FUNC3(bp, cid));

	/* In some cases, type may already contain the func-id
	 * mainly in SRIOV related use cases, so we add it here only
	 * if it's not already set.
	 */
	if (!(cmd_type & SPE_HDR_FUNCTION_ID)) {
		type = (cmd_type << SPE_HDR_CONN_TYPE_SHIFT) &
			SPE_HDR_CONN_TYPE;
		type |= ((FUNC1(bp) << SPE_HDR_FUNCTION_ID_SHIFT) &
			 SPE_HDR_FUNCTION_ID);
	} else {
		type = cmd_type;
	}

	spe->hdr.type = FUNC12(type);

	spe->data.update_data_addr.hi = FUNC13(data_hi);
	spe->data.update_data_addr.lo = FUNC13(data_lo);

	/*
	 * It's ok if the actual decrement is issued towards the memory
	 * somewhere between the spin_lock and spin_unlock. Thus no
	 * more explicit memory barrier is needed.
	 */
	if (common)
		FUNC6(&bp->eq_spq_left);
	else
		FUNC6(&bp->cq_spq_left);

	FUNC2(BNX2X_MSG_SP,
	   "SPQE[%x] (%x:%x)  (cmd, common?) (%d,%d)  hw_cid %x  data (%x:%x) type(0x%x) left (CQ, EQ) (%x,%x)\n",
	   bp->spq_prod_idx, (u32)FUNC4(bp->spq_mapping),
	   (u32)(FUNC5(bp->spq_mapping) +
	   (void *)bp->spq_prod_bd - (void *)bp->spq), command, common,
	   FUNC3(bp, cid), data_hi, data_lo, type,
	   FUNC7(&bp->cq_spq_left), FUNC7(&bp->eq_spq_left));

	FUNC11(bp);
	FUNC15(&bp->spq_lock);
	return 0;
}