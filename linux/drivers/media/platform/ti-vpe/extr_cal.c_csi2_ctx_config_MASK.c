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
struct cal_ctx {int csi2_port; int virtual_channel; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_ATT_MASK ; 
 int CAL_CSI2_CTX_ATT_PIX ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_CPORT_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_DT_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_LINES_MASK ; 
 int CAL_CSI2_CTX_PACK_MODE_LINE ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_PACK_MODE_MASK ; 
 int /*<<< orphan*/  CAL_CSI2_CTX_VC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,struct cal_ctx*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cal_ctx *ctx)
{
	u32 val;

	val = FUNC2(ctx->dev, FUNC0(ctx->csi2_port));
	FUNC4(&val, ctx->csi2_port, CAL_CSI2_CTX_CPORT_MASK);
	/*
	 * DT type: MIPI CSI-2 Specs
	 *   0x1: All - DT filter is disabled
	 *  0x24: RGB888 1 pixel  = 3 bytes
	 *  0x2B: RAW10  4 pixels = 5 bytes
	 *  0x2A: RAW8   1 pixel  = 1 byte
	 *  0x1E: YUV422 2 pixels = 4 bytes
	 */
	FUNC4(&val, 0x1, CAL_CSI2_CTX_DT_MASK);
	/* Virtual Channel from the CSI2 sensor usually 0! */
	FUNC4(&val, ctx->virtual_channel, CAL_CSI2_CTX_VC_MASK);
	/* NUM_LINES_PER_FRAME => 0 means auto detect */
	FUNC4(&val, 0, CAL_CSI2_CTX_LINES_MASK);
	FUNC4(&val, CAL_CSI2_CTX_ATT_PIX, CAL_CSI2_CTX_ATT_MASK);
	FUNC4(&val, CAL_CSI2_CTX_PACK_MODE_LINE,
		  CAL_CSI2_CTX_PACK_MODE_MASK);
	FUNC3(ctx->dev, FUNC0(ctx->csi2_port), val);
	FUNC1(3, ctx, "CAL_CSI2_CTX0(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC2(ctx->dev, FUNC0(ctx->csi2_port)));
}