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
typedef  size_t u32 ;
struct cnic_local {struct cnic_context* ctx_tbl; int /*<<< orphan*/  delete_task; int /*<<< orphan*/  cnic_local_flags; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; struct cnic_local* cnic_priv; } ;
struct cnic_ctl_completion {int /*<<< orphan*/  error; int /*<<< orphan*/  cid; } ;
struct TYPE_2__ {struct cnic_ctl_completion comp; } ;
struct cnic_ctl_info {int cmd; TYPE_1__ data; } ;
struct cnic_context {int wait_cond; int /*<<< orphan*/  waitq; int /*<<< orphan*/  ctx_flags; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
#define  CNIC_CTL_COMPLETION_CMD 133 
#define  CNIC_CTL_FCOE_STATS_GET_CMD 132 
#define  CNIC_CTL_ISCSI_STATS_GET_CMD 131 
#define  CNIC_CTL_START_CMD 130 
#define  CNIC_CTL_STOP_CMD 129 
#define  CNIC_CTL_STOP_ISCSI_CMD 128 
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int /*<<< orphan*/  CNIC_LCL_FL_STOP_ISCSI ; 
 int CNIC_ULP_FCOE ; 
 int CNIC_ULP_ISCSI ; 
 int /*<<< orphan*/  CTX_FL_CID_ERROR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_local*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct cnic_dev*) ; 
 int /*<<< orphan*/  cnic_wq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(void *data, struct cnic_ctl_info *info)
{
	struct cnic_dev *dev = data;
	int ulp_type = CNIC_ULP_ISCSI;

	switch (info->cmd) {
	case CNIC_CTL_STOP_CMD:
		FUNC3(dev);

		FUNC8(dev);
		FUNC6(dev);

		FUNC4(dev);
		break;
	case CNIC_CTL_START_CMD:
		FUNC3(dev);

		if (!FUNC5(dev))
			FUNC7(dev);

		FUNC4(dev);
		break;
	case CNIC_CTL_STOP_ISCSI_CMD: {
		struct cnic_local *cp = dev->cnic_priv;
		FUNC11(CNIC_LCL_FL_STOP_ISCSI, &cp->cnic_local_flags);
		FUNC10(cnic_wq, &cp->delete_task, 0);
		break;
	}
	case CNIC_CTL_COMPLETION_CMD: {
		struct cnic_ctl_completion *comp = &info->data.comp;
		u32 cid = FUNC0(comp->cid);
		u32 l5_cid;
		struct cnic_local *cp = dev->cnic_priv;

		if (!FUNC12(CNIC_F_CNIC_UP, &dev->flags))
			break;

		if (FUNC2(cp, cid, &l5_cid) == 0) {
			struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];

			if (FUNC13(comp->error)) {
				FUNC11(CTX_FL_CID_ERROR, &ctx->ctx_flags);
				FUNC9(dev->netdev,
					   "CID %x CFC delete comp error %x\n",
					   cid, comp->error);
			}

			ctx->wait_cond = 1;
			FUNC14(&ctx->waitq);
		}
		break;
	}
	case CNIC_CTL_FCOE_STATS_GET_CMD:
		ulp_type = CNIC_ULP_FCOE;
		/* fall through */
	case CNIC_CTL_ISCSI_STATS_GET_CMD:
		FUNC3(dev);
		FUNC1(dev, ulp_type);
		FUNC4(dev);
		break;

	default:
		return -EINVAL;
	}
	return 0;
}