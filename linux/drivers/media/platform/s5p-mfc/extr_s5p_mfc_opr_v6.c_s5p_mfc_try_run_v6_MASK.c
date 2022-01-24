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
struct s5p_mfc_dev {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  mfc_cmds; struct s5p_mfc_ctx** ctx; } ;
struct s5p_mfc_ctx {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/  capture_state; int /*<<< orphan*/  dpb_flush_flag; int /*<<< orphan*/  src_queue_cnt; int /*<<< orphan*/  pb_count; int /*<<< orphan*/  dst_queue_cnt; } ;

/* Variables and functions */
 unsigned int EAGAIN ; 
 scalar_t__ MFCINST_DECODER ; 
 scalar_t__ MFCINST_ENCODER ; 
#define  MFCINST_FINISHING 138 
#define  MFCINST_FLUSH 137 
#define  MFCINST_GOT_INST 136 
#define  MFCINST_HEAD_PARSED 135 
#define  MFCINST_HEAD_PRODUCED 134 
#define  MFCINST_INIT 133 
#define  MFCINST_RES_CHANGE_END 132 
#define  MFCINST_RES_CHANGE_FLUSH 131 
#define  MFCINST_RES_CHANGE_INIT 130 
#define  MFCINST_RETURN_INST 129 
#define  MFCINST_RUNNING 128 
 int /*<<< orphan*/  QUEUE_FREE ; 
 int /*<<< orphan*/  close_inst_cmd ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  open_inst_cmd ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct s5p_mfc_dev*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_ctx*) ; 
 unsigned int FUNC7 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_mfc_ctx*) ; 
 unsigned int FUNC9 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct s5p_mfc_ctx*) ; 
 unsigned int FUNC11 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct s5p_mfc_ctx*) ; 
 unsigned int FUNC13 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct s5p_mfc_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct s5p_mfc_dev *dev)
{
	struct s5p_mfc_ctx *ctx;
	int new_ctx;
	unsigned int ret = 0;

	FUNC0(1, "Try run dev: %p\n", dev);

	/* Check whether hardware is not running */
	if (FUNC16(0, &dev->hw_lock) != 0) {
		/* This is perfectly ok, the scheduled ctx should wait */
		FUNC0(1, "Couldn't lock HW.\n");
		return;
	}

	/* Choose the context to run */
	new_ctx = FUNC5(dev);
	if (new_ctx < 0) {
		/* No contexts to run */
		if (FUNC15(0, &dev->hw_lock) == 0) {
			FUNC1("Failed to unlock hardware.\n");
			return;
		}

		FUNC0(1, "No ctx is scheduled to be run.\n");
		return;
	}

	FUNC0(1, "New context: %d\n", new_ctx);
	ctx = dev->ctx[new_ctx];
	FUNC0(1, "Setting new context to %p\n", ctx);
	/* Got context to run in ctx */
	FUNC0(1, "ctx->dst_queue_cnt=%d ctx->dpb_count=%d ctx->src_queue_cnt=%d\n",
		ctx->dst_queue_cnt, ctx->pb_count, ctx->src_queue_cnt);
	FUNC0(1, "ctx->state=%d\n", ctx->state);
	/* Last frame has already been sent to MFC
	 * Now obtaining frames from MFC buffer */

	FUNC4();
	FUNC2(ctx);

	if (ctx->type == MFCINST_DECODER) {
		switch (ctx->state) {
		case MFCINST_FINISHING:
			FUNC8(ctx);
			break;
		case MFCINST_RUNNING:
			ret = FUNC7(ctx);
			break;
		case MFCINST_INIT:
			ret = FUNC6(dev->mfc_cmds, open_inst_cmd,
					ctx);
			break;
		case MFCINST_RETURN_INST:
			ret = FUNC6(dev->mfc_cmds, close_inst_cmd,
					ctx);
			break;
		case MFCINST_GOT_INST:
			FUNC10(ctx);
			break;
		case MFCINST_HEAD_PARSED:
			ret = FUNC11(ctx);
			break;
		case MFCINST_FLUSH:
			FUNC14(ctx, ctx->dpb_flush_flag);
			break;
		case MFCINST_RES_CHANGE_INIT:
			FUNC8(ctx);
			break;
		case MFCINST_RES_CHANGE_FLUSH:
			FUNC8(ctx);
			break;
		case MFCINST_RES_CHANGE_END:
			FUNC0(2, "Finished remaining frames after resolution change.\n");
			ctx->capture_state = QUEUE_FREE;
			FUNC0(2, "Will re-init the codec`.\n");
			FUNC10(ctx);
			break;
		default:
			ret = -EAGAIN;
		}
	} else if (ctx->type == MFCINST_ENCODER) {
		switch (ctx->state) {
		case MFCINST_FINISHING:
		case MFCINST_RUNNING:
			ret = FUNC9(ctx);
			break;
		case MFCINST_INIT:
			ret = FUNC6(dev->mfc_cmds, open_inst_cmd,
					ctx);
			break;
		case MFCINST_RETURN_INST:
			ret = FUNC6(dev->mfc_cmds, close_inst_cmd,
					ctx);
			break;
		case MFCINST_GOT_INST:
			FUNC12(ctx);
			break;
		case MFCINST_HEAD_PRODUCED:
			ret = FUNC13(ctx);
			break;
		default:
			ret = -EAGAIN;
		}
	} else {
		FUNC1("invalid context type: %d\n", ctx->type);
		ret = -EAGAIN;
	}

	if (ret) {
		/* Free hardware lock */
		if (FUNC15(0, &dev->hw_lock) == 0)
			FUNC1("Failed to unlock hardware.\n");

		/* This is in deed imporant, as no operation has been
		 * scheduled, reduce the clock count as no one will
		 * ever do this, because no interrupt related to this try_run
		 * will ever come from hardware. */
		FUNC3();
	}
}