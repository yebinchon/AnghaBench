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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  conn_and_cmd_data; int /*<<< orphan*/  type; } ;
struct eth_spe {TYPE_1__ hdr; } ;
struct TYPE_8__ {int max_kwqe_pending; } ;
struct bnx2x {int cnic_spq_pending; int /*<<< orphan*/  spq_lock; struct eth_spe* cnic_kwq_cons; struct eth_spe* cnic_kwq; struct eth_spe* cnic_kwq_last; scalar_t__ cnic_kwq_pending; TYPE_4__ cnic_eth_dev; int /*<<< orphan*/  eq_spq_left; int /*<<< orphan*/  cq_spq_left; TYPE_3__* context; int /*<<< orphan*/  panic; } ;
struct TYPE_7__ {TYPE_2__* vcxt; } ;
struct TYPE_6__ {int /*<<< orphan*/  eth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__,int) ; 
 scalar_t__ ETH_CONNECTION_TYPE ; 
 scalar_t__ FCOE_CONNECTION_TYPE ; 
 int ILT_PAGE_CIDS ; 
 scalar_t__ ISCSI_CONNECTION_TYPE ; 
 scalar_t__ NONE_CONNECTION_TYPE ; 
 scalar_t__ RAMROD_CMD_ID_ETH_CLIENT_SETUP ; 
 int SPE_HDR_CMD_ID_SHIFT ; 
 scalar_t__ SPE_HDR_CONN_TYPE ; 
 scalar_t__ SPE_HDR_CONN_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ *,int) ; 
 struct eth_spe* FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct bnx2x *bp, int count)
{
	struct eth_spe *spe;
	int cxt_index, cxt_offset;

#ifdef BNX2X_STOP_ON_ERROR
	if (unlikely(bp->panic))
		return;
#endif

	FUNC12(&bp->spq_lock);
	FUNC2(bp->cnic_spq_pending < count);
	bp->cnic_spq_pending -= count;

	for (; bp->cnic_kwq_pending; bp->cnic_kwq_pending--) {
		u16 type =  (FUNC10(bp->cnic_kwq_cons->hdr.type)
				& SPE_HDR_CONN_TYPE) >>
				SPE_HDR_CONN_TYPE_SHIFT;
		u8 cmd = (FUNC11(bp->cnic_kwq_cons->hdr.conn_and_cmd_data)
				>> SPE_HDR_CMD_ID_SHIFT) & 0xff;

		/* Set validation for iSCSI L2 client before sending SETUP
		 *  ramrod
		 */
		if (type == ETH_CONNECTION_TYPE) {
			if (cmd == RAMROD_CMD_ID_ETH_CLIENT_SETUP) {
				cxt_index = FUNC1(bp) /
					ILT_PAGE_CIDS;
				cxt_offset = FUNC1(bp) -
					(cxt_index * ILT_PAGE_CIDS);
				FUNC7(bp,
					&bp->context[cxt_index].
							 vcxt[cxt_offset].eth,
					FUNC1(bp));
			}
		}

		/*
		 * There may be not more than 8 L2, not more than 8 L5 SPEs
		 * and in the air. We also check that number of outstanding
		 * COMMON ramrods is not more than the EQ and SPQ can
		 * accommodate.
		 */
		if (type == ETH_CONNECTION_TYPE) {
			if (!FUNC5(&bp->cq_spq_left))
				break;
			else
				FUNC4(&bp->cq_spq_left);
		} else if (type == NONE_CONNECTION_TYPE) {
			if (!FUNC5(&bp->eq_spq_left))
				break;
			else
				FUNC4(&bp->eq_spq_left);
		} else if ((type == ISCSI_CONNECTION_TYPE) ||
			   (type == FCOE_CONNECTION_TYPE)) {
			if (bp->cnic_spq_pending >=
			    bp->cnic_eth_dev.max_kwqe_pending)
				break;
			else
				bp->cnic_spq_pending++;
		} else {
			FUNC0("Unknown SPE type: %d\n", type);
			FUNC6();
			break;
		}

		spe = FUNC8(bp);
		*spe = *bp->cnic_kwq_cons;

		FUNC3(BNX2X_MSG_SP, "pending on SPQ %d, on KWQ %d count %d\n",
		   bp->cnic_spq_pending, bp->cnic_kwq_pending, count);

		if (bp->cnic_kwq_cons == bp->cnic_kwq_last)
			bp->cnic_kwq_cons = bp->cnic_kwq;
		else
			bp->cnic_kwq_cons++;
	}
	FUNC9(bp);
	FUNC13(&bp->spq_lock);
}