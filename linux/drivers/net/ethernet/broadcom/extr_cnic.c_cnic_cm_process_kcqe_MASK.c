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
typedef  size_t u32 ;
struct l4_kcq {int op_code; size_t conn_id; size_t cid; int /*<<< orphan*/  status; } ;
struct kcqe {int dummy; } ;
struct iscsi_kcqe {int /*<<< orphan*/  completion_status; } ;
struct cnic_sock {int const state; int /*<<< orphan*/  flags; } ;
struct cnic_local {int /*<<< orphan*/  (* close_conn ) (struct cnic_sock*,int const) ;struct cnic_sock* csk_tbl; } ;
struct cnic_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_BNX2X_CLASS ; 
 int FCOE_RAMROD_CMD_ID_TERMINATE_CONN ; 
 int /*<<< orphan*/  L4_KCQE_COMPLETION_STATUS_PARITY_ERROR ; 
#define  L4_KCQE_OPCODE_VALUE_CLOSE_COMP 136 
#define  L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED 135 
#define  L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE 134 
 int L4_KCQE_OPCODE_VALUE_OFFLOAD_PG ; 
#define  L4_KCQE_OPCODE_VALUE_RESET_COMP 133 
#define  L4_KCQE_OPCODE_VALUE_RESET_RECEIVED 132 
 int L4_KCQE_OPCODE_VALUE_UPDATE_PG ; 
#define  L5CM_RAMROD_CMD_ID_CLOSE 131 
#define  L5CM_RAMROD_CMD_ID_SEARCHER_DELETE 130 
#define  L5CM_RAMROD_CMD_ID_TCP_CONNECT 129 
#define  L5CM_RAMROD_CMD_ID_TERMINATE_OFFLOAD 128 
 size_t MAX_CM_SK_TBL_SZ ; 
 int /*<<< orphan*/  SK_F_HW_ERR ; 
 int /*<<< orphan*/  SK_F_OFFLD_COMPLETE ; 
 int /*<<< orphan*/  SK_F_OFFLD_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,struct l4_kcq*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_local*,struct cnic_sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*,struct kcqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct cnic_sock*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cnic_sock*,int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct cnic_dev *dev, struct kcqe *kcqe)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct l4_kcq *l4kcqe = (struct l4_kcq *) kcqe;
	u8 opcode = l4kcqe->op_code;
	u32 l5_cid;
	struct cnic_sock *csk;

	if (opcode == FCOE_RAMROD_CMD_ID_TERMINATE_CONN) {
		FUNC4(dev, kcqe);
		return;
	}
	if (opcode == L4_KCQE_OPCODE_VALUE_OFFLOAD_PG ||
	    opcode == L4_KCQE_OPCODE_VALUE_UPDATE_PG) {
		FUNC1(dev, l4kcqe);
		return;
	}

	l5_cid = l4kcqe->conn_id;
	if (opcode & 0x80)
		l5_cid = l4kcqe->cid;
	if (l5_cid >= MAX_CM_SK_TBL_SZ)
		return;

	csk = &cp->csk_tbl[l5_cid];
	FUNC5(csk);

	if (!FUNC3(csk)) {
		FUNC6(csk);
		return;
	}

	switch (opcode) {
	case L5CM_RAMROD_CMD_ID_TCP_CONNECT:
		if (l4kcqe->status != 0) {
			FUNC0(SK_F_OFFLD_SCHED, &csk->flags);
			FUNC2(cp, csk,
				       L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE);
		}
		break;
	case L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE:
		if (l4kcqe->status == 0)
			FUNC8(SK_F_OFFLD_COMPLETE, &csk->flags);
		else if (l4kcqe->status ==
			 L4_KCQE_COMPLETION_STATUS_PARITY_ERROR)
			FUNC8(SK_F_HW_ERR, &csk->flags);

		FUNC9();
		FUNC0(SK_F_OFFLD_SCHED, &csk->flags);
		FUNC2(cp, csk, opcode);
		break;

	case L5CM_RAMROD_CMD_ID_CLOSE: {
		struct iscsi_kcqe *l5kcqe = (struct iscsi_kcqe *) kcqe;

		if (l4kcqe->status == 0 && l5kcqe->completion_status == 0)
			break;

		FUNC7(dev->netdev, "RAMROD CLOSE compl with status 0x%x completion status 0x%x\n",
			    l4kcqe->status, l5kcqe->completion_status);
		opcode = L4_KCQE_OPCODE_VALUE_CLOSE_COMP;
	}
		/* Fall through */
	case L4_KCQE_OPCODE_VALUE_RESET_RECEIVED:
	case L4_KCQE_OPCODE_VALUE_CLOSE_COMP:
	case L4_KCQE_OPCODE_VALUE_RESET_COMP:
	case L5CM_RAMROD_CMD_ID_SEARCHER_DELETE:
	case L5CM_RAMROD_CMD_ID_TERMINATE_OFFLOAD:
		if (l4kcqe->status == L4_KCQE_COMPLETION_STATUS_PARITY_ERROR)
			FUNC8(SK_F_HW_ERR, &csk->flags);

		cp->close_conn(csk, opcode);
		break;

	case L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED:
		/* after we already sent CLOSE_REQ */
		if (FUNC12(CNIC_F_BNX2X_CLASS, &dev->flags) &&
		    !FUNC12(SK_F_OFFLD_COMPLETE, &csk->flags) &&
		    csk->state == L4_KCQE_OPCODE_VALUE_CLOSE_COMP)
			cp->close_conn(csk, L4_KCQE_OPCODE_VALUE_RESET_COMP);
		else
			FUNC2(cp, csk, opcode);
		break;
	}
	FUNC6(csk);
}