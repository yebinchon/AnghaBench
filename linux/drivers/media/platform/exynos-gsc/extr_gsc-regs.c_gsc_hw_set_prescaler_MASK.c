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
struct gsc_scaler {int /*<<< orphan*/  pre_vratio; int /*<<< orphan*/  pre_hratio; int /*<<< orphan*/  pre_shfactor; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_scaler scaler; struct gsc_dev* gsc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSC_PRE_SCALE_RATIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct gsc_ctx *ctx)
{
	struct gsc_dev *dev = ctx->gsc_dev;
	struct gsc_scaler *sc = &ctx->scaler;
	u32 cfg;

	cfg = FUNC1(sc->pre_shfactor);
	cfg |= FUNC0(sc->pre_hratio);
	cfg |= FUNC2(sc->pre_vratio);
	FUNC3(cfg, dev->regs + GSC_PRE_SCALE_RATIO);
}