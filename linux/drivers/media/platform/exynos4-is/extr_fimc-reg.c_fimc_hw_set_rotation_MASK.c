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
typedef  int u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {int rotation; scalar_t__ out_path; struct fimc_dev* fimc_dev; } ;

/* Variables and functions */
 scalar_t__ FIMC_IO_DMA ; 
 scalar_t__ FIMC_IO_LCDFIFO ; 
 scalar_t__ FIMC_REG_CITRGFMT ; 
 int FIMC_REG_CITRGFMT_FLIP_180 ; 
 int FIMC_REG_CITRGFMT_INROT90 ; 
 int FIMC_REG_CITRGFMT_OUTROT90 ; 
 scalar_t__ FIMC_REG_MSCTRL ; 
 int FIMC_REG_MSCTRL_FLIP_MASK ; 
 int FUNC0 (struct fimc_ctx*) ; 
 int FUNC1 (struct fimc_ctx*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct fimc_ctx *ctx)
{
	u32 cfg, flip;
	struct fimc_dev *dev = ctx->fimc_dev;

	cfg = FUNC2(dev->regs + FIMC_REG_CITRGFMT);
	cfg &= ~(FIMC_REG_CITRGFMT_INROT90 | FIMC_REG_CITRGFMT_OUTROT90 |
		 FIMC_REG_CITRGFMT_FLIP_180);

	/*
	 * The input and output rotator cannot work simultaneously.
	 * Use the output rotator in output DMA mode or the input rotator
	 * in direct fifo output mode.
	 */
	if (ctx->rotation == 90 || ctx->rotation == 270) {
		if (ctx->out_path == FIMC_IO_LCDFIFO)
			cfg |= FIMC_REG_CITRGFMT_INROT90;
		else
			cfg |= FIMC_REG_CITRGFMT_OUTROT90;
	}

	if (ctx->out_path == FIMC_IO_DMA) {
		cfg |= FUNC1(ctx);
		FUNC3(cfg, dev->regs + FIMC_REG_CITRGFMT);
	} else {
		/* LCD FIFO path */
		flip = FUNC2(dev->regs + FIMC_REG_MSCTRL);
		flip &= ~FIMC_REG_MSCTRL_FLIP_MASK;
		flip |= FUNC0(ctx);
		FUNC3(flip, dev->regs + FIMC_REG_MSCTRL);
	}
}