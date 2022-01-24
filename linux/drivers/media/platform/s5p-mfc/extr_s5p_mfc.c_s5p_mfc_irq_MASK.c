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
struct s5p_mfc_dev {size_t curr_ctx; void* warn_start; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  enter_suspend; struct s5p_mfc_ctx** ctx; int /*<<< orphan*/  watchdog_cnt; } ;
struct s5p_mfc_ctx {unsigned int int_type; unsigned int int_err; int int_cond; int /*<<< orphan*/  queue; int /*<<< orphan*/  state; void* inst_no; int /*<<< orphan*/  ref_queue; TYPE_1__* c_ops; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* post_frame_start ) (struct s5p_mfc_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MFCINST_FINISHING ; 
 int /*<<< orphan*/  MFCINST_FREE ; 
 int /*<<< orphan*/  MFCINST_GOT_INST ; 
 int /*<<< orphan*/  MFCINST_RUNNING ; 
 void* MFC_NO_INSTANCE_SET ; 
 unsigned int S5P_FIMV_ERR_INCOMPLETE_FRAME ; 
 unsigned int S5P_FIMV_ERR_NO_VALID_SEQ_HDR ; 
 unsigned int S5P_FIMV_ERR_TIMEOUT ; 
#define  S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET 141 
#define  S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET 140 
#define  S5P_MFC_R2H_CMD_DPB_FLUSH_RET 139 
#define  S5P_MFC_R2H_CMD_ERR_RET 138 
#define  S5P_MFC_R2H_CMD_FIELD_DONE_RET 137 
#define  S5P_MFC_R2H_CMD_FRAME_DONE_RET 136 
#define  S5P_MFC_R2H_CMD_FW_STATUS_RET 135 
#define  S5P_MFC_R2H_CMD_INIT_BUFFERS_RET 134 
#define  S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET 133 
#define  S5P_MFC_R2H_CMD_SEQ_DONE_RET 132 
#define  S5P_MFC_R2H_CMD_SLEEP_RET 131 
#define  S5P_MFC_R2H_CMD_SLICE_DONE_RET 130 
#define  S5P_MFC_R2H_CMD_SYS_INIT_RET 129 
#define  S5P_MFC_R2H_CMD_WAKEUP_RET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clear_int_flags ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  err_dec ; 
 int /*<<< orphan*/  get_inst_no ; 
 int /*<<< orphan*/  get_int_err ; 
 int /*<<< orphan*/  get_int_reason ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct s5p_mfc_ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct s5p_mfc_ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct s5p_mfc_ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct s5p_mfc_ctx*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct s5p_mfc_ctx*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  try_run ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct s5p_mfc_ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct s5p_mfc_dev*,unsigned int,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC23(int irq, void *priv)
{
	struct s5p_mfc_dev *dev = priv;
	struct s5p_mfc_ctx *ctx;
	unsigned int reason;
	unsigned int err;

	FUNC6();
	/* Reset the timeout watchdog */
	FUNC1(&dev->watchdog_cnt, 0);
	FUNC16(&dev->irqlock);
	ctx = dev->ctx[dev->curr_ctx];
	/* Get the reason of interrupt and the error code */
	reason = FUNC15(dev->mfc_ops, get_int_reason, dev);
	err = FUNC15(dev->mfc_ops, get_int_err, dev);
	FUNC5(1, "Int reason: %d (err: %08x)\n", reason, err);
	switch (reason) {
	case S5P_MFC_R2H_CMD_ERR_RET:
		/* An error has occurred */
		if (ctx->state == MFCINST_RUNNING &&
			(FUNC15(dev->mfc_ops, err_dec, err) >=
				dev->warn_start ||
				err == S5P_FIMV_ERR_NO_VALID_SEQ_HDR ||
				err == S5P_FIMV_ERR_INCOMPLETE_FRAME ||
				err == S5P_FIMV_ERR_TIMEOUT))
			FUNC11(ctx, reason, err);
		else
			FUNC10(dev, ctx, reason, err);
		FUNC2(0, &dev->enter_suspend);
		break;

	case S5P_MFC_R2H_CMD_SLICE_DONE_RET:
	case S5P_MFC_R2H_CMD_FIELD_DONE_RET:
	case S5P_MFC_R2H_CMD_FRAME_DONE_RET:
		if (ctx->c_ops->post_frame_start) {
			if (ctx->c_ops->post_frame_start(ctx))
				FUNC8("post_frame_start() failed\n");

			if (ctx->state == MFCINST_FINISHING &&
						FUNC4(&ctx->ref_queue)) {
				FUNC15(dev->mfc_ops, clear_int_flags, dev);
				FUNC14(ctx);
				break;
			}
			FUNC15(dev->mfc_ops, clear_int_flags, dev);
			FUNC0(FUNC19(0, &dev->hw_lock) == 0);
			FUNC9();
			FUNC21(ctx, reason, err);
			FUNC15(dev->mfc_ops, try_run, dev);
		} else {
			FUNC11(ctx, reason, err);
		}
		break;

	case S5P_MFC_R2H_CMD_SEQ_DONE_RET:
		FUNC13(ctx, reason, err);
		break;

	case S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET:
		ctx->inst_no = FUNC15(dev->mfc_ops, get_inst_no, dev);
		ctx->state = MFCINST_GOT_INST;
		goto irq_cleanup_hw;

	case S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET:
		ctx->inst_no = MFC_NO_INSTANCE_SET;
		ctx->state = MFCINST_FREE;
		goto irq_cleanup_hw;

	case S5P_MFC_R2H_CMD_SYS_INIT_RET:
	case S5P_MFC_R2H_CMD_FW_STATUS_RET:
	case S5P_MFC_R2H_CMD_SLEEP_RET:
	case S5P_MFC_R2H_CMD_WAKEUP_RET:
		if (ctx)
			FUNC3(ctx);
		FUNC15(dev->mfc_ops, clear_int_flags, dev);
		FUNC2(0, &dev->hw_lock);
		FUNC2(0, &dev->enter_suspend);
		FUNC22(dev, reason, err);
		break;

	case S5P_MFC_R2H_CMD_INIT_BUFFERS_RET:
		FUNC12(ctx, reason, err);
		break;

	case S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET:
		FUNC15(dev->mfc_ops, clear_int_flags, dev);
		ctx->int_type = reason;
		ctx->int_err = err;
		FUNC14(ctx);
		break;

	case S5P_MFC_R2H_CMD_DPB_FLUSH_RET:
		ctx->state = MFCINST_RUNNING;
		goto irq_cleanup_hw;

	default:
		FUNC5(2, "Unknown int reason\n");
		FUNC15(dev->mfc_ops, clear_int_flags, dev);
	}
	FUNC17(&dev->irqlock);
	FUNC7();
	return IRQ_HANDLED;
irq_cleanup_hw:
	FUNC15(dev->mfc_ops, clear_int_flags, dev);
	ctx->int_type = reason;
	ctx->int_err = err;
	ctx->int_cond = 1;
	if (FUNC19(0, &dev->hw_lock) == 0)
		FUNC8("Failed to unlock hw\n");

	FUNC9();
	FUNC3(ctx);
	FUNC20(&ctx->queue);

	FUNC15(dev->mfc_ops, try_run, dev);
	FUNC17(&dev->irqlock);
	FUNC5(2, "Exit via irq_cleanup_hw\n");
	return IRQ_HANDLED;
}