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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  pb_count; int /*<<< orphan*/  state; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFCINST_ABORT ; 
 int /*<<< orphan*/  MFCINST_HEAD_PARSED ; 
 int /*<<< orphan*/  MFCINST_INIT ; 
 int /*<<< orphan*/  MFCINST_RES_CHANGE_END ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_SEQ_DONE_RET ; 
#define  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE 128 
 struct s5p_mfc_ctx* FUNC0 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct s5p_mfc_ctx *ctx = FUNC0(ctrl);
	struct s5p_mfc_dev *dev = ctx->dev;

	switch (ctrl->id) {
	case V4L2_CID_MIN_BUFFERS_FOR_CAPTURE:
		if (ctx->state >= MFCINST_HEAD_PARSED &&
		    ctx->state < MFCINST_ABORT) {
			ctrl->val = ctx->pb_count;
			break;
		} else if (ctx->state != MFCINST_INIT &&
				ctx->state != MFCINST_RES_CHANGE_END) {
			FUNC2(&dev->v4l2_dev, "Decoding not initialised\n");
			return -EINVAL;
		}
		/* Should wait for the header to be parsed */
		FUNC1(ctx,
				S5P_MFC_R2H_CMD_SEQ_DONE_RET, 0);
		if (ctx->state >= MFCINST_HEAD_PARSED &&
		    ctx->state < MFCINST_ABORT) {
			ctrl->val = ctx->pb_count;
		} else {
			FUNC2(&dev->v4l2_dev, "Decoding not initialised\n");
			return -EINVAL;
		}
		break;
	}
	return 0;
}