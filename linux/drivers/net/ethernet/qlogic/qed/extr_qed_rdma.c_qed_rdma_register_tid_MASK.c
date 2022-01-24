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
struct TYPE_8__ {void* lo; scalar_t__ hi; } ;
struct rdma_register_tid_ramrod_data {TYPE_4__ dif_error_addr; scalar_t__ flags2; TYPE_4__ pbl_base; TYPE_4__ va; int /*<<< orphan*/  length_lo; scalar_t__ length_hi; int /*<<< orphan*/  pd; int /*<<< orphan*/  key; void* itid; scalar_t__ flags1; scalar_t__ flags; } ;
struct TYPE_7__ {struct rdma_register_tid_ramrod_data rdma_register_tid; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct qed_rdma_register_tid_in_params {int itid; int pbl_two_level; int zbva; int phy_mr; int tid_type; int dma_mr; int page_size_log; int remote_read; int remote_write; int remote_atomic; int local_write; int local_read; int mw_bind; int pbl_page_size_log; int length; scalar_t__ fbo; int /*<<< orphan*/  dif_error_addr; scalar_t__ dif_enabled; int /*<<< orphan*/  pbl_ptr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  pd; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {int /*<<< orphan*/  opaque_fid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum rdma_tid_type { ____Placeholder_rdma_tid_type } rdma_tid_type ;
struct TYPE_6__ {scalar_t__ last_tid; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
#define  QED_RDMA_TID_FMR 130 
#define  QED_RDMA_TID_MW 129 
#define  QED_RDMA_TID_REGISTERED_MR 128 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  RDMA_RAMROD_REGISTER_MR ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL ; 
 int /*<<< orphan*/  RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED ; 
 scalar_t__ RDMA_RETURN_OK ; 
 int RDMA_TID_FMR ; 
 int RDMA_TID_MW ; 
 int RDMA_TID_REGISTERED_MR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_spq_entry*) ; 
 int FUNC9 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int FUNC10 (struct qed_hwfn*,struct qed_spq_entry*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC11(void *rdma_cxt,
		      struct qed_rdma_register_tid_in_params *params)
{
	struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
	struct rdma_register_tid_ramrod_data *p_ramrod;
	struct qed_sp_init_data init_data;
	struct qed_spq_entry *p_ent;
	enum rdma_tid_type tid_type;
	u8 fw_return_code;
	int rc;

	FUNC3(p_hwfn, QED_MSG_RDMA, "itid = %08x\n", params->itid);

	/* Get SPQ entry */
	FUNC7(&init_data, 0, sizeof(init_data));
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC9(p_hwfn, &p_ent, RDMA_RAMROD_REGISTER_MR,
				 p_hwfn->p_rdma_info->proto, &init_data);
	if (rc) {
		FUNC3(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
		return rc;
	}

	if (p_hwfn->p_rdma_info->last_tid < params->itid)
		p_hwfn->p_rdma_info->last_tid = params->itid;

	p_ramrod = &p_ent->ramrod.rdma_register_tid;

	p_ramrod->flags = 0;
	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL,
		  params->pbl_two_level);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED, params->zbva);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR, params->phy_mr);

	/* Don't initialize D/C field, as it may override other bits. */
	if (!(params->tid_type == QED_RDMA_TID_FMR) && !(params->dma_mr))
		FUNC4(p_ramrod->flags,
			  RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG,
			  params->page_size_log - 12);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ,
		  params->remote_read);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE,
		  params->remote_write);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC,
		  params->remote_atomic);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE,
		  params->local_write);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ, params->local_read);

	FUNC4(p_ramrod->flags,
		  RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND,
		  params->mw_bind);

	FUNC4(p_ramrod->flags1,
		  RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG,
		  params->pbl_page_size_log - 12);

	FUNC4(p_ramrod->flags2,
		  RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR, params->dma_mr);

	switch (params->tid_type) {
	case QED_RDMA_TID_REGISTERED_MR:
		tid_type = RDMA_TID_REGISTERED_MR;
		break;
	case QED_RDMA_TID_FMR:
		tid_type = RDMA_TID_FMR;
		break;
	case QED_RDMA_TID_MW:
		tid_type = RDMA_TID_MW;
		break;
	default:
		rc = -EINVAL;
		FUNC3(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
		FUNC8(p_hwfn, p_ent);
		return rc;
	}
	FUNC4(p_ramrod->flags1,
		  RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE, tid_type);

	p_ramrod->itid = FUNC6(params->itid);
	p_ramrod->key = params->key;
	p_ramrod->pd = FUNC5(params->pd);
	p_ramrod->length_hi = (u8)(params->length >> 32);
	p_ramrod->length_lo = FUNC0(params->length);
	if (params->zbva) {
		/* Lower 32 bits of the registered MR address.
		 * In case of zero based MR, will hold FBO
		 */
		p_ramrod->va.hi = 0;
		p_ramrod->va.lo = FUNC6(params->fbo);
	} else {
		FUNC1(p_ramrod->va, params->vaddr);
	}
	FUNC1(p_ramrod->pbl_base, params->pbl_ptr);

	/* DIF */
	if (params->dif_enabled) {
		FUNC4(p_ramrod->flags2,
			  RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG, 1);
		FUNC1(p_ramrod->dif_error_addr,
			       params->dif_error_addr);
	}

	rc = FUNC10(p_hwfn, p_ent, &fw_return_code);
	if (rc)
		return rc;

	if (fw_return_code != RDMA_RETURN_OK) {
		FUNC2(p_hwfn, "fw_return_code = %d\n", fw_return_code);
		return -EINVAL;
	}

	FUNC3(p_hwfn, QED_MSG_RDMA, "Register TID, rc = %d\n", rc);
	return rc;
}