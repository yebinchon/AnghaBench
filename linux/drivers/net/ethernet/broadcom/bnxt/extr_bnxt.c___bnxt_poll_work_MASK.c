#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tx_cmp {int dummy; } ;
struct bnxt_tx_ring_info {int /*<<< orphan*/  tx_db; int /*<<< orphan*/  tx_prod; } ;
struct bnxt_napi {int tx_pkts; int events; struct bnxt_tx_ring_info* tx_ring; } ;
struct bnxt_cp_ring_info {int has_more_work; int had_work_done; int /*<<< orphan*/  cp_raw_cons; struct tx_cmp** cp_desc_ring; struct bnxt_napi* bnapi; } ;
struct bnxt {int tx_wake_thresh; } ;

/* Variables and functions */
 int BNXT_REDIRECT_EVENT ; 
 int BNXT_TX_EVENT ; 
 int CMPL_BASE_TYPE_HWRM_ASYNC_EVENT ; 
 int CMPL_BASE_TYPE_HWRM_DONE ; 
 int CMPL_BASE_TYPE_HWRM_FWD_REQ ; 
 int CMP_TYPE_TX_L2_CMP ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tx_cmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct tx_cmp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bnxt*,struct bnxt_cp_ring_info*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*,struct tx_cmp*) ; 
 int FUNC9 (struct bnxt*,struct bnxt_cp_ring_info*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
			    int budget)
{
	struct bnxt_napi *bnapi = cpr->bnapi;
	u32 raw_cons = cpr->cp_raw_cons;
	u32 cons;
	int tx_pkts = 0;
	int rx_pkts = 0;
	u8 event = 0;
	struct tx_cmp *txcmp;

	cpr->has_more_work = 0;
	while (1) {
		int rc;

		cons = FUNC3(raw_cons);
		txcmp = &cpr->cp_desc_ring[FUNC1(cons)][FUNC0(cons)];

		if (!FUNC5(txcmp, raw_cons))
			break;

		/* The valid test of the entry must be done first before
		 * reading any further.
		 */
		FUNC10();
		cpr->had_work_done = 1;
		if (FUNC4(txcmp) == CMP_TYPE_TX_L2_CMP) {
			tx_pkts++;
			/* return full budget so NAPI will complete. */
			if (FUNC12(tx_pkts > bp->tx_wake_thresh)) {
				rx_pkts = budget;
				raw_cons = FUNC2(raw_cons);
				if (budget)
					cpr->has_more_work = 1;
				break;
			}
		} else if ((FUNC4(txcmp) & 0x30) == 0x10) {
			if (FUNC11(budget))
				rc = FUNC9(bp, cpr, &raw_cons, &event);
			else
				rc = FUNC7(bp, cpr, &raw_cons,
							   &event);
			if (FUNC11(rc >= 0))
				rx_pkts += rc;
			/* Increment rx_pkts when rc is -ENOMEM to count towards
			 * the NAPI budget.  Otherwise, we may potentially loop
			 * here forever if we consistently cannot allocate
			 * buffers.
			 */
			else if (rc == -ENOMEM && budget)
				rx_pkts++;
			else if (rc == -EBUSY)	/* partial completion */
				break;
		} else if (FUNC12((FUNC4(txcmp) ==
				     CMPL_BASE_TYPE_HWRM_DONE) ||
				    (FUNC4(txcmp) ==
				     CMPL_BASE_TYPE_HWRM_FWD_REQ) ||
				    (FUNC4(txcmp) ==
				     CMPL_BASE_TYPE_HWRM_ASYNC_EVENT))) {
			FUNC8(bp, txcmp);
		}
		raw_cons = FUNC2(raw_cons);

		if (rx_pkts && rx_pkts == budget) {
			cpr->has_more_work = 1;
			break;
		}
	}

	if (event & BNXT_REDIRECT_EVENT)
		FUNC14();

	if (event & BNXT_TX_EVENT) {
		struct bnxt_tx_ring_info *txr = bnapi->tx_ring;
		u16 prod = txr->tx_prod;

		/* Sync BD data before updating doorbell */
		FUNC13();

		FUNC6(bp, &txr->tx_db, prod);
	}

	cpr->cp_raw_cons = raw_cons;
	bnapi->tx_pkts += tx_pkts;
	bnapi->events |= event;
	return rx_pkts;
}