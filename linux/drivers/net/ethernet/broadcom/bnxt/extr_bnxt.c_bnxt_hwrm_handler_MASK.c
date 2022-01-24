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
typedef  int u16 ;
struct tx_cmp {int dummy; } ;
struct hwrm_fwd_req_cmpl {int /*<<< orphan*/  source_id; } ;
struct hwrm_cmpl {int /*<<< orphan*/  sequence_id; } ;
struct hwrm_async_event_cmpl {int dummy; } ;
struct TYPE_2__ {int first_vf_id; int active_vfs; int /*<<< orphan*/ * vf_event_bmap; } ;
struct bnxt {int hwrm_intr_seq_id; int /*<<< orphan*/  sp_event; TYPE_1__ pf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT ; 
#define  CMPL_BASE_TYPE_HWRM_ASYNC_EVENT 130 
#define  CMPL_BASE_TYPE_HWRM_DONE 129 
#define  CMPL_BASE_TYPE_HWRM_FWD_REQ 128 
 int EINVAL ; 
 int FUNC0 (struct tx_cmp*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_async_event_cmpl*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp, struct tx_cmp *txcmp)
{
	u16 cmpl_type = FUNC0(txcmp), vf_id, seq_id;
	struct hwrm_cmpl *h_cmpl = (struct hwrm_cmpl *)txcmp;
	struct hwrm_fwd_req_cmpl *fwd_req_cmpl =
				(struct hwrm_fwd_req_cmpl *)txcmp;

	switch (cmpl_type) {
	case CMPL_BASE_TYPE_HWRM_DONE:
		seq_id = FUNC3(h_cmpl->sequence_id);
		if (seq_id == bp->hwrm_intr_seq_id)
			bp->hwrm_intr_seq_id = (u16)~bp->hwrm_intr_seq_id;
		else
			FUNC4(bp->dev, "Invalid hwrm seq id %d\n", seq_id);
		break;

	case CMPL_BASE_TYPE_HWRM_FWD_REQ:
		vf_id = FUNC3(fwd_req_cmpl->source_id);

		if ((vf_id < bp->pf.first_vf_id) ||
		    (vf_id >= bp->pf.first_vf_id + bp->pf.active_vfs)) {
			FUNC4(bp->dev, "Msg contains invalid VF id %x\n",
				   vf_id);
			return -EINVAL;
		}

		FUNC5(vf_id - bp->pf.first_vf_id, bp->pf.vf_event_bmap);
		FUNC5(BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT, &bp->sp_event);
		FUNC2(bp);
		break;

	case CMPL_BASE_TYPE_HWRM_ASYNC_EVENT:
		FUNC1(bp,
					 (struct hwrm_async_event_cmpl *)txcmp);

	default:
		break;
	}

	return 0;
}