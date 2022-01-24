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
typedef  int /*<<< orphan*/  u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct fimc_ctx {TYPE_1__ scaler; struct fimc_dev* fimc_dev; } ;

/* Variables and functions */
 scalar_t__ FIMC_REG_CIIMGCPT ; 
 int /*<<< orphan*/  FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE ; 
 int /*<<< orphan*/  FIMC_REG_CIIMGCPT_IMGCPTEN ; 
 int /*<<< orphan*/  FIMC_REG_CIIMGCPT_IMGCPTEN_SC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct fimc_ctx *ctx)
{
	struct fimc_dev *dev = ctx->fimc_dev;
	u32 cfg;

	cfg = FUNC0(dev->regs + FIMC_REG_CIIMGCPT);
	cfg |= FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE;

	if (ctx->scaler.enabled)
		cfg |= FIMC_REG_CIIMGCPT_IMGCPTEN_SC;
	else
		cfg &= FIMC_REG_CIIMGCPT_IMGCPTEN_SC;

	cfg |= FIMC_REG_CIIMGCPT_IMGCPTEN;
	FUNC1(cfg, dev->regs + FIMC_REG_CIIMGCPT);
}