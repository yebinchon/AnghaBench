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
typedef  union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef  int u32 ;
struct cnic_sock {size_t l5_cid; int /*<<< orphan*/  state; int /*<<< orphan*/  cid; int /*<<< orphan*/  flags; struct cnic_dev* dev; } ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct cnic_context {int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  l5_data ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_CONNECTION_TYPE ; 
#define  L4_KCQE_OPCODE_VALUE_CLOSE_COMP 132 
#define  L4_KCQE_OPCODE_VALUE_RESET_COMP 131 
#define  L4_KCQE_OPCODE_VALUE_RESET_RECEIVED 130 
#define  L5CM_RAMROD_CMD_ID_SEARCHER_DELETE 129 
#define  L5CM_RAMROD_CMD_ID_TERMINATE_OFFLOAD 128 
 int /*<<< orphan*/  SK_F_HW_ERR ; 
 int /*<<< orphan*/  SK_F_PG_OFFLD_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_local*,struct cnic_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (union l5cm_specific_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cnic_sock *csk, u32 opcode)
{
	struct cnic_dev *dev = csk->dev;
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_context *ctx = &cp->ctx_tbl[csk->l5_cid];
	union l5cm_specific_data l5_data;
	u32 cmd = 0;
	int close_complete = 0;

	switch (opcode) {
	case L4_KCQE_OPCODE_VALUE_RESET_RECEIVED:
	case L4_KCQE_OPCODE_VALUE_CLOSE_COMP:
	case L4_KCQE_OPCODE_VALUE_RESET_COMP:
		if (FUNC2(csk, opcode)) {
			if (FUNC5(SK_F_HW_ERR, &csk->flags))
				close_complete = 1;
			else if (FUNC5(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
				cmd = L5CM_RAMROD_CMD_ID_SEARCHER_DELETE;
			else
				close_complete = 1;
		}
		break;
	case L5CM_RAMROD_CMD_ID_SEARCHER_DELETE:
		cmd = L5CM_RAMROD_CMD_ID_TERMINATE_OFFLOAD;
		break;
	case L5CM_RAMROD_CMD_ID_TERMINATE_OFFLOAD:
		close_complete = 1;
		break;
	}
	if (cmd) {
		FUNC4(&l5_data, 0, sizeof(l5_data));

		FUNC3(dev, cmd, csk->cid, ISCSI_CONNECTION_TYPE,
				    &l5_data);
	} else if (close_complete) {
		ctx->timestamp = jiffies;
		FUNC0(csk);
		FUNC1(cp, csk, csk->state);
	}
}