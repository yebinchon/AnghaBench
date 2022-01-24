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
typedef  int u32 ;
struct coda_dev {int dummy; } ;
struct TYPE_2__ {int gop_size_changed; int gop_size; int h264_intra_qp_changed; int h264_intra_qp; int bitrate; int bitrate_changed; int framerate_changed; int framerate; int intra_refresh_changed; int intra_refresh; int slice_mode_changed; } ;
struct coda_ctx {TYPE_1__ params; scalar_t__ gopcounter; struct coda_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_CHANGE_ENABLE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_INTRA_MB_NUM ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_RC_BITRATE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_RC_FRAME_RATE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_RC_GOP ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_RC_INTRA_QP ; 
 int /*<<< orphan*/  CODA_CMD_ENC_PARAM_SLICE_MODE ; 
 int /*<<< orphan*/  CODA_COMMAND_RC_CHANGE_PARAMETER ; 
 int CODA_PARAM_CHANGE_INTRA_MB_NUM ; 
 int CODA_PARAM_CHANGE_RC_BITRATE ; 
 int CODA_PARAM_CHANGE_RC_FRAME_RATE ; 
 int CODA_PARAM_CHANGE_RC_GOP ; 
 int CODA_PARAM_CHANGE_RC_INTRA_QP ; 
 int CODA_PARAM_CHANGE_SLICE_MODE ; 
 int /*<<< orphan*/  CODA_RET_ENC_PARAM_CHANGE_SUCCESS ; 
 int FUNC0 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct coda_ctx*,char*,int,...) ; 
 int FUNC2 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct coda_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct coda_ctx *ctx)
{
	struct coda_dev *dev = ctx->dev;
	u32 change_enable = 0;
	u32 success;
	int ret;

	if (ctx->params.gop_size_changed) {
		change_enable |= CODA_PARAM_CHANGE_RC_GOP;
		FUNC4(dev, ctx->params.gop_size,
			   CODA_CMD_ENC_PARAM_RC_GOP);
		ctx->gopcounter = ctx->params.gop_size - 1;
		ctx->params.gop_size_changed = false;
	}
	if (ctx->params.h264_intra_qp_changed) {
		FUNC1(1, ctx, "parameter change: intra Qp %u\n",
			 ctx->params.h264_intra_qp);

		if (ctx->params.bitrate) {
			change_enable |= CODA_PARAM_CHANGE_RC_INTRA_QP;
			FUNC4(dev, ctx->params.h264_intra_qp,
				   CODA_CMD_ENC_PARAM_RC_INTRA_QP);
		}
		ctx->params.h264_intra_qp_changed = false;
	}
	if (ctx->params.bitrate_changed) {
		FUNC1(1, ctx, "parameter change: bitrate %u kbit/s\n",
			 ctx->params.bitrate);
		change_enable |= CODA_PARAM_CHANGE_RC_BITRATE;
		FUNC4(dev, ctx->params.bitrate,
			   CODA_CMD_ENC_PARAM_RC_BITRATE);
		ctx->params.bitrate_changed = false;
	}
	if (ctx->params.framerate_changed) {
		FUNC1(1, ctx, "parameter change: frame rate %u/%u Hz\n",
			 ctx->params.framerate & 0xffff,
			 (ctx->params.framerate >> 16) + 1);
		change_enable |= CODA_PARAM_CHANGE_RC_FRAME_RATE;
		FUNC4(dev, ctx->params.framerate,
			   CODA_CMD_ENC_PARAM_RC_FRAME_RATE);
		ctx->params.framerate_changed = false;
	}
	if (ctx->params.intra_refresh_changed) {
		FUNC1(1, ctx, "parameter change: intra refresh MBs %u\n",
			 ctx->params.intra_refresh);
		change_enable |= CODA_PARAM_CHANGE_INTRA_MB_NUM;
		FUNC4(dev, ctx->params.intra_refresh,
			   CODA_CMD_ENC_PARAM_INTRA_MB_NUM);
		ctx->params.intra_refresh_changed = false;
	}
	if (ctx->params.slice_mode_changed) {
		change_enable |= CODA_PARAM_CHANGE_SLICE_MODE;
		FUNC4(dev, FUNC3(ctx),
			   CODA_CMD_ENC_PARAM_SLICE_MODE);
		ctx->params.slice_mode_changed = false;
	}

	if (!change_enable)
		return 0;

	FUNC4(dev, change_enable, CODA_CMD_ENC_PARAM_CHANGE_ENABLE);

	ret = FUNC0(ctx, CODA_COMMAND_RC_CHANGE_PARAMETER);
	if (ret < 0)
		return ret;

	success = FUNC2(dev, CODA_RET_ENC_PARAM_CHANGE_SUCCESS);
	if (success != 1)
		FUNC1(1, ctx, "parameter change failed: %u\n", success);

	return 0;
}