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
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {scalar_t__ out_path; struct fimc_dev* fimc_dev; } ;

/* Variables and functions */
 scalar_t__ FIMC_IO_LCDFIFO ; 
 scalar_t__ FIMC_REG_CISCCTRL ; 
 int /*<<< orphan*/  FIMC_REG_CISCCTRL_LCDPATHEN_FIFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct fimc_ctx *ctx)
{
	struct fimc_dev *dev = ctx->fimc_dev;

	u32 cfg = FUNC0(dev->regs + FIMC_REG_CISCCTRL);
	cfg &= ~FIMC_REG_CISCCTRL_LCDPATHEN_FIFO;
	if (ctx->out_path == FIMC_IO_LCDFIFO)
		cfg |= FIMC_REG_CISCCTRL_LCDPATHEN_FIFO;
	FUNC1(cfg, dev->regs + FIMC_REG_CISCCTRL);
}