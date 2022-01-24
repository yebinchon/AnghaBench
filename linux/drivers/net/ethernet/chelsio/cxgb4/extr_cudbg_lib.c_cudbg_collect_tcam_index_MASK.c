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
typedef  int u64 ;
typedef  int u32 ;
struct fw_ldst_mps_rplc {int /*<<< orphan*/  rplc255_224; int /*<<< orphan*/  rplc223_192; int /*<<< orphan*/  rplc191_160; int /*<<< orphan*/  rplc159_128; int /*<<< orphan*/  rplc127_96; int /*<<< orphan*/  rplc95_64; int /*<<< orphan*/  rplc63_32; int /*<<< orphan*/  rplc31_0; int /*<<< orphan*/  fid_idx; } ;
struct TYPE_5__ {struct fw_ldst_mps_rplc rplc; } ;
struct TYPE_6__ {TYPE_1__ mps; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct cudbg_mps_tcam {int vniy; int dip_hit; int vlan_vld; int ivlan; int vnix; int cls_lo; int cls_hi; int repli; int idx; scalar_t__ rplc_size; int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; void** rplc; int /*<<< orphan*/  lookup_type; int /*<<< orphan*/  port_num; } ;
struct cudbg_init {struct adapter* adap; } ;
struct TYPE_7__ {scalar_t__ mps_rplc_size; } ;
struct TYPE_8__ {TYPE_3__ arch; int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_4__ params; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  ldst_cmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T6 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ CUDBG_MAX_RPLC_SIZE ; 
 int DATADIPHIT_F ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  DATALKPTYPE_M ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int DATAVIDH2_F ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_MPS ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FW_LDST_MPS_RPLC ; 
 int FUNC14 (struct fw_ldst_cmd) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  MPS_CLS_TCAM_DATA2_CTL_A ; 
 int /*<<< orphan*/  MPS_CLS_TCAM_RDATA0_REQ_ID1_A ; 
 int /*<<< orphan*/  MPS_CLS_TCAM_RDATA1_REQ_ID1_A ; 
 int /*<<< orphan*/  MPS_CLS_TCAM_RDATA2_REQ_ID1_A ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int REPLICATE_F ; 
 int T6_REPLICATE_F ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct adapter*,struct fw_ldst_mps_rplc*) ; 
 int /*<<< orphan*/  FUNC21 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 scalar_t__ FUNC24 (struct cudbg_init*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC31 (struct adapter*,int /*<<< orphan*/ ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 
 int /*<<< orphan*/  FUNC32 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC33(struct cudbg_init *pdbg_init,
				    struct cudbg_mps_tcam *tcam, u32 idx)
{
	struct adapter *padap = pdbg_init->adap;
	u64 tcamy, tcamx, val;
	u32 ctl, data2;
	int rc = 0;

	if (FUNC0(padap->params.chip) >= CHELSIO_T6) {
		/* CtlReqID   - 1: use Host Driver Requester ID
		 * CtlCmdType - 0: Read, 1: Write
		 * CtlTcamSel - 0: TCAM0, 1: TCAM1
		 * CtlXYBitSel- 0: Y bit, 1: X bit
		 */

		/* Read tcamy */
		ctl = FUNC2(1) | FUNC1(0) | FUNC5(0);
		if (idx < 256)
			ctl |= FUNC3(idx) | FUNC4(0);
		else
			ctl |= FUNC3(idx - 256) | FUNC4(1);

		FUNC32(padap, MPS_CLS_TCAM_DATA2_CTL_A, ctl);
		val = FUNC29(padap, MPS_CLS_TCAM_RDATA1_REQ_ID1_A);
		tcamy = FUNC9(val) << 32;
		tcamy |= FUNC29(padap, MPS_CLS_TCAM_RDATA0_REQ_ID1_A);
		data2 = FUNC29(padap, MPS_CLS_TCAM_RDATA2_REQ_ID1_A);
		tcam->lookup_type = FUNC6(data2);

		/* 0 - Outer header, 1 - Inner header
		 * [71:48] bit locations are overloaded for
		 * outer vs. inner lookup types.
		 */
		if (tcam->lookup_type && tcam->lookup_type != DATALKPTYPE_M) {
			/* Inner header VNI */
			tcam->vniy = (data2 & DATAVIDH2_F) | FUNC8(data2);
			tcam->vniy = (tcam->vniy << 16) | FUNC19(val);
			tcam->dip_hit = data2 & DATADIPHIT_F;
		} else {
			tcam->vlan_vld = data2 & DATAVIDH2_F;
			tcam->ivlan = FUNC19(val);
		}

		tcam->port_num = FUNC7(data2);

		/* Read tcamx. Change the control param */
		ctl |= FUNC5(1);
		FUNC32(padap, MPS_CLS_TCAM_DATA2_CTL_A, ctl);
		val = FUNC29(padap, MPS_CLS_TCAM_RDATA1_REQ_ID1_A);
		tcamx = FUNC9(val) << 32;
		tcamx |= FUNC29(padap, MPS_CLS_TCAM_RDATA0_REQ_ID1_A);
		data2 = FUNC29(padap, MPS_CLS_TCAM_RDATA2_REQ_ID1_A);
		if (tcam->lookup_type && tcam->lookup_type != DATALKPTYPE_M) {
			/* Inner header VNI mask */
			tcam->vnix = (data2 & DATAVIDH2_F) | FUNC8(data2);
			tcam->vnix = (tcam->vnix << 16) | FUNC19(val);
		}
	} else {
		tcamy = FUNC30(padap, FUNC18(idx));
		tcamx = FUNC30(padap, FUNC17(idx));
	}

	/* If no entry, return */
	if (tcamx & tcamy)
		return rc;

	tcam->cls_lo = FUNC29(padap, FUNC16(idx));
	tcam->cls_hi = FUNC29(padap, FUNC15(idx));

	if (FUNC25(padap->params.chip))
		tcam->repli = (tcam->cls_lo & REPLICATE_F);
	else if (FUNC26(padap->params.chip))
		tcam->repli = (tcam->cls_lo & T6_REPLICATE_F);

	if (tcam->repli) {
		struct fw_ldst_cmd ldst_cmd;
		struct fw_ldst_mps_rplc mps_rplc;

		FUNC27(&ldst_cmd, 0, sizeof(ldst_cmd));
		ldst_cmd.op_to_addrspace =
			FUNC22(FUNC10(FW_LDST_CMD) |
			      FW_CMD_REQUEST_F | FW_CMD_READ_F |
			      FUNC11(FW_LDST_ADDRSPC_MPS));
		ldst_cmd.cycles_to_len16 = FUNC22(FUNC14(ldst_cmd));
		ldst_cmd.u.mps.rplc.fid_idx =
			FUNC23(FUNC12(FW_LDST_MPS_RPLC) |
			      FUNC13(idx));

		/* If firmware is not attached/alive, use backdoor register
		 * access to collect dump.
		 */
		if (FUNC24(pdbg_init))
			rc = FUNC31(padap, padap->mbox, &ldst_cmd,
					sizeof(ldst_cmd), &ldst_cmd);

		if (rc || !FUNC24(pdbg_init)) {
			FUNC20(padap, &mps_rplc);
			/* Ignore error since we collected directly from
			 * reading registers.
			 */
			rc = 0;
		} else {
			mps_rplc = ldst_cmd.u.mps.rplc;
		}

		tcam->rplc[0] = FUNC28(mps_rplc.rplc31_0);
		tcam->rplc[1] = FUNC28(mps_rplc.rplc63_32);
		tcam->rplc[2] = FUNC28(mps_rplc.rplc95_64);
		tcam->rplc[3] = FUNC28(mps_rplc.rplc127_96);
		if (padap->params.arch.mps_rplc_size > CUDBG_MAX_RPLC_SIZE) {
			tcam->rplc[4] = FUNC28(mps_rplc.rplc159_128);
			tcam->rplc[5] = FUNC28(mps_rplc.rplc191_160);
			tcam->rplc[6] = FUNC28(mps_rplc.rplc223_192);
			tcam->rplc[7] = FUNC28(mps_rplc.rplc255_224);
		}
	}
	FUNC21(tcamx, tcamy, tcam->addr, &tcam->mask);
	tcam->idx = idx;
	tcam->rplc_size = padap->params.arch.mps_rplc_size;
	return rc;
}