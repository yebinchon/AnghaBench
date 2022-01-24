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
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {scalar_t__ out_path; struct gsc_dev* gsc_dev; } ;

/* Variables and functions */
 scalar_t__ GSC_DMA ; 
 scalar_t__ GSC_OUT_CON ; 
 int /*<<< orphan*/  GSC_OUT_PATH_LOCAL ; 
 int /*<<< orphan*/  GSC_OUT_PATH_MASK ; 
 int /*<<< orphan*/  GSC_OUT_PATH_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct gsc_ctx *ctx)
{
	struct gsc_dev *dev = ctx->gsc_dev;

	u32 cfg = FUNC0(dev->regs + GSC_OUT_CON);
	cfg &= ~GSC_OUT_PATH_MASK;

	if (ctx->out_path == GSC_DMA)
		cfg |= GSC_OUT_PATH_MEMORY;
	else
		cfg |= GSC_OUT_PATH_LOCAL;

	FUNC1(cfg, dev->regs + GSC_OUT_CON);
}