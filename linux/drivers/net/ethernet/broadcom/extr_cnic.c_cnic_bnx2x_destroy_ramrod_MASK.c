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
typedef  size_t u32 ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int /*<<< orphan*/  ctx_flags; scalar_t__ wait_cond; int /*<<< orphan*/  waitq; int /*<<< orphan*/  cid; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  l5_data ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CNIC_RAMROD_TMO ; 
 int /*<<< orphan*/  CTX_FL_CID_ERROR ; 
 int EBUSY ; 
 int /*<<< orphan*/  NONE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_COMMON_CFC_DEL ; 
 int FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (union l5cm_specific_data*,int /*<<< orphan*/ ,int) ; 
 struct bnx2x* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cnic_dev *dev, u32 l5_cid)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC4(dev->netdev);
	struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];
	union l5cm_specific_data l5_data;
	int ret;
	u32 hw_cid;

	FUNC2(&ctx->waitq);
	ctx->wait_cond = 0;
	FUNC3(&l5_data, 0, sizeof(l5_data));
	hw_cid = FUNC0(bp, ctx->cid);

	ret = FUNC1(dev, RAMROD_CMD_ID_COMMON_CFC_DEL,
				  hw_cid, NONE_CONNECTION_TYPE, &l5_data);

	if (ret == 0) {
		FUNC7(ctx->waitq, ctx->wait_cond, CNIC_RAMROD_TMO);
		if (FUNC6(FUNC5(CTX_FL_CID_ERROR, &ctx->ctx_flags)))
			return -EBUSY;
	}

	return 0;
}