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
typedef  int /*<<< orphan*/  u32 ;
struct cal_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  csi2_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK ; 
 int CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON ; 
 int /*<<< orphan*/  CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK ; 
 scalar_t__ CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON ; 
 int /*<<< orphan*/  CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK ; 
 int CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK ; 
 int /*<<< orphan*/  CAL_CTRL ; 
 int CAL_CTRL_BURSTSIZE_BURST128 ; 
 int /*<<< orphan*/  CAL_CTRL_BURSTSIZE_MASK ; 
 int /*<<< orphan*/  CAL_CTRL_MFLAGH_MASK ; 
 int /*<<< orphan*/  CAL_CTRL_MFLAGL_MASK ; 
 int /*<<< orphan*/  CAL_CTRL_POSTED_WRITES_MASK ; 
 int CAL_CTRL_POSTED_WRITES_NONPOSTED ; 
 int /*<<< orphan*/  CAL_CTRL_TAGCNT_MASK ; 
 int CAL_GEN_DISABLE ; 
 int CAL_GEN_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,struct cal_ctx*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct cal_ctx *ctx)
{
	int i;
	u32 val;

	val = FUNC3(ctx->dev, FUNC1(ctx->csi2_port));
	FUNC6(&val, CAL_GEN_ENABLE,
		  CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK);
	FUNC6(&val, CAL_GEN_ENABLE,
		  CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK);
	FUNC6(&val, CAL_GEN_DISABLE,
		  CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK);
	FUNC6(&val, 407, CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK);
	FUNC5(ctx->dev, FUNC1(ctx->csi2_port), val);
	FUNC2(3, ctx, "CAL_CSI2_TIMING(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC3(ctx->dev, FUNC1(ctx->csi2_port)));

	val = FUNC3(ctx->dev, FUNC0(ctx->csi2_port));
	FUNC6(&val, CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL,
		  CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK);
	FUNC6(&val, CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON,
		  CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK);
	FUNC5(ctx->dev, FUNC0(ctx->csi2_port), val);
	for (i = 0; i < 10; i++) {
		if (FUNC4(ctx->dev,
				   FUNC0(ctx->csi2_port),
				   CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK) ==
		    CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON)
			break;
		FUNC7(1000, 1100);
	}
	FUNC2(3, ctx, "CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC3(ctx->dev, FUNC0(ctx->csi2_port)));

	val = FUNC3(ctx->dev, CAL_CTRL);
	FUNC6(&val, CAL_CTRL_BURSTSIZE_BURST128, CAL_CTRL_BURSTSIZE_MASK);
	FUNC6(&val, 0xF, CAL_CTRL_TAGCNT_MASK);
	FUNC6(&val, CAL_CTRL_POSTED_WRITES_NONPOSTED,
		  CAL_CTRL_POSTED_WRITES_MASK);
	FUNC6(&val, 0xFF, CAL_CTRL_MFLAGL_MASK);
	FUNC6(&val, 0xFF, CAL_CTRL_MFLAGH_MASK);
	FUNC5(ctx->dev, CAL_CTRL, val);
	FUNC2(3, ctx, "CAL_CTRL = 0x%08x\n", FUNC3(ctx->dev, CAL_CTRL));
}