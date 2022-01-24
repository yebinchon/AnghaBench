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
union l5cm_specific_data {size_t fcoe_conn_id; size_t fcoe_conn_context_id; int /*<<< orphan*/  op_code; scalar_t__ completion_status; } ;
typedef  size_t u32 ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct fcoe_kwqe_conn_destroy {size_t context_id; size_t conn_id; } ;
struct fcoe_kcqe {size_t fcoe_conn_id; size_t fcoe_conn_context_id; int /*<<< orphan*/  op_code; scalar_t__ completion_status; } ;
struct cnic_local {int /*<<< orphan*/  delete_task; struct cnic_context* ctx_tbl; } ;
struct cnic_dev {size_t max_fcoe_conn; struct cnic_local* cnic_priv; } ;
struct cnic_context {int /*<<< orphan*/  ctx_flags; scalar_t__ wait_cond; int /*<<< orphan*/  waitq; } ;
typedef  int /*<<< orphan*/  l5_data ;
typedef  int /*<<< orphan*/  kcqe ;

/* Variables and functions */
 scalar_t__ BNX2X_FCOE_L5_CID_BASE ; 
 int /*<<< orphan*/  CNIC_RAMROD_TMO ; 
 int /*<<< orphan*/  CNIC_ULP_FCOE ; 
 int /*<<< orphan*/  CTX_FL_DELETE_WAIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FCOE_CONNECTION_TYPE ; 
 scalar_t__ FCOE_KCQE_COMPLETION_STATUS_ERROR ; 
 int /*<<< orphan*/  FCOE_KCQE_OPCODE_DESTROY_CONN ; 
 int /*<<< orphan*/  FCOE_RAMROD_CMD_ID_TERMINATE_CONN ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,int /*<<< orphan*/ ,struct kcqe**,int) ; 
 int FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int /*<<< orphan*/  cnic_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (union l5cm_specific_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cnic_dev *dev, struct kwqe *kwqe)
{
	struct fcoe_kwqe_conn_destroy *req;
	union l5cm_specific_data l5_data;
	int ret;
	u32 cid, l5_cid;
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_context *ctx;
	struct fcoe_kcqe kcqe;
	struct kcqe *cqes[1];

	req = (struct fcoe_kwqe_conn_destroy *) kwqe;
	cid = req->context_id;
	l5_cid = req->conn_id;
	if (l5_cid >= dev->max_fcoe_conn)
		return -EINVAL;

	l5_cid += BNX2X_FCOE_L5_CID_BASE;

	ctx = &cp->ctx_tbl[l5_cid];

	FUNC2(&ctx->waitq);
	ctx->wait_cond = 0;

	FUNC3(&kcqe, 0, sizeof(kcqe));
	kcqe.completion_status = FCOE_KCQE_COMPLETION_STATUS_ERROR;
	FUNC3(&l5_data, 0, sizeof(l5_data));
	ret = FUNC1(dev, FCOE_RAMROD_CMD_ID_TERMINATE_CONN, cid,
				  FCOE_CONNECTION_TYPE, &l5_data);
	if (ret == 0) {
		FUNC7(ctx->waitq, ctx->wait_cond, CNIC_RAMROD_TMO);
		if (ctx->wait_cond)
			kcqe.completion_status = 0;
	}

	FUNC6(CTX_FL_DELETE_WAIT, &ctx->ctx_flags);
	FUNC5(cnic_wq, &cp->delete_task, FUNC4(2000));

	kcqe.op_code = FCOE_KCQE_OPCODE_DESTROY_CONN;
	kcqe.fcoe_conn_id = req->conn_id;
	kcqe.fcoe_conn_context_id = cid;

	cqes[0] = (struct kcqe *) &kcqe;
	FUNC0(dev, CNIC_ULP_FCOE, cqes, 1);
	return ret;
}