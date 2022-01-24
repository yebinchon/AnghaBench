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
struct cal_ctx {unsigned int csi2_port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int CAL_GEN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CAL_WR_DMA_CTRL_CPORT_MASK ; 
 int /*<<< orphan*/  CAL_WR_DMA_CTRL_DTAG_MASK ; 
 unsigned int CAL_WR_DMA_CTRL_DTAG_PIX_DAT ; 
 unsigned int CAL_WR_DMA_CTRL_MODE_CONST ; 
 int /*<<< orphan*/  CAL_WR_DMA_CTRL_MODE_MASK ; 
 unsigned int CAL_WR_DMA_CTRL_PATTERN_LINEAR ; 
 int /*<<< orphan*/  CAL_WR_DMA_CTRL_PATTERN_MASK ; 
 int /*<<< orphan*/  CAL_WR_DMA_CTRL_STALL_RD_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  CAL_WR_DMA_OFST_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  CAL_WR_DMA_XSIZE_MASK ; 
 int /*<<< orphan*/  CAL_WR_DMA_XSIZE_XSKIP_MASK ; 
 int /*<<< orphan*/  FUNC3 (int,struct cal_ctx*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct cal_ctx *ctx,
			      unsigned int width)
{
	u32 val;

	val = FUNC4(ctx->dev, FUNC0(ctx->csi2_port));
	FUNC7(&val, ctx->csi2_port, CAL_WR_DMA_CTRL_CPORT_MASK);
	FUNC7(&val, CAL_WR_DMA_CTRL_DTAG_PIX_DAT,
		  CAL_WR_DMA_CTRL_DTAG_MASK);
	FUNC7(&val, CAL_WR_DMA_CTRL_MODE_CONST,
		  CAL_WR_DMA_CTRL_MODE_MASK);
	FUNC7(&val, CAL_WR_DMA_CTRL_PATTERN_LINEAR,
		  CAL_WR_DMA_CTRL_PATTERN_MASK);
	FUNC7(&val, CAL_GEN_ENABLE, CAL_WR_DMA_CTRL_STALL_RD_MASK);
	FUNC5(ctx->dev, FUNC0(ctx->csi2_port), val);
	FUNC3(3, ctx, "CAL_WR_DMA_CTRL(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC4(ctx->dev, FUNC0(ctx->csi2_port)));

	/*
	 * width/16 not sure but giving it a whirl.
	 * zero does not work right
	 */
	FUNC6(ctx->dev,
			FUNC1(ctx->csi2_port),
			(width / 16),
			CAL_WR_DMA_OFST_MASK);
	FUNC3(3, ctx, "CAL_WR_DMA_OFST(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC4(ctx->dev, FUNC1(ctx->csi2_port)));

	val = FUNC4(ctx->dev, FUNC2(ctx->csi2_port));
	/* 64 bit word means no skipping */
	FUNC7(&val, 0, CAL_WR_DMA_XSIZE_XSKIP_MASK);
	/*
	 * (width*8)/64 this should be size of an entire line
	 * in 64bit word but 0 means all data until the end
	 * is detected automagically
	 */
	FUNC7(&val, (width / 8), CAL_WR_DMA_XSIZE_MASK);
	FUNC5(ctx->dev, FUNC2(ctx->csi2_port), val);
	FUNC3(3, ctx, "CAL_WR_DMA_XSIZE(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC4(ctx->dev, FUNC2(ctx->csi2_port)));
}