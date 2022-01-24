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
struct vpe_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  csc; int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_SC0 ; 
 int /*<<< orphan*/  CFG_SC17 ; 
 int /*<<< orphan*/  CFG_SC8 ; 
 int /*<<< orphan*/  CSC_CSC00 ; 
 int /*<<< orphan*/  FUNC0 (struct vpe_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPE_CLK_FORMAT_SELECT ; 
 int /*<<< orphan*/  VPE_DEI_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vpe_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPE_US1_R0 ; 
 int /*<<< orphan*/  VPE_US2_R0 ; 
 int /*<<< orphan*/  VPE_US3_R0 ; 
 int /*<<< orphan*/  csc_hdr ; 
 int /*<<< orphan*/  csc_regs ; 
 int /*<<< orphan*/  dei_hdr ; 
 int /*<<< orphan*/  dei_regs ; 
 int /*<<< orphan*/  out_fmt_hdr ; 
 int /*<<< orphan*/  out_fmt_reg ; 
 int /*<<< orphan*/  sc_hdr0 ; 
 int /*<<< orphan*/  sc_hdr17 ; 
 int /*<<< orphan*/  sc_hdr8 ; 
 int /*<<< orphan*/  sc_regs0 ; 
 int /*<<< orphan*/  sc_regs17 ; 
 int /*<<< orphan*/  sc_regs8 ; 
 int /*<<< orphan*/  us1_hdr ; 
 int /*<<< orphan*/  us1_regs ; 
 int /*<<< orphan*/  us2_hdr ; 
 int /*<<< orphan*/  us2_regs ; 
 int /*<<< orphan*/  us3_hdr ; 
 int /*<<< orphan*/  us3_regs ; 

__attribute__((used)) static void FUNC2(struct vpe_ctx *ctx)
{
	FUNC1(ctx, out_fmt_hdr, out_fmt_reg, VPE_CLK_FORMAT_SELECT);
	FUNC1(ctx, us1_hdr, us1_regs, VPE_US1_R0);
	FUNC1(ctx, us2_hdr, us2_regs, VPE_US2_R0);
	FUNC1(ctx, us3_hdr, us3_regs, VPE_US3_R0);
	FUNC1(ctx, dei_hdr, dei_regs, VPE_DEI_FRAME_SIZE);
	FUNC1(ctx, sc_hdr0, sc_regs0,
		FUNC0(ctx, ctx->dev->sc, CFG_SC0));
	FUNC1(ctx, sc_hdr8, sc_regs8,
		FUNC0(ctx, ctx->dev->sc, CFG_SC8));
	FUNC1(ctx, sc_hdr17, sc_regs17,
		FUNC0(ctx, ctx->dev->sc, CFG_SC17));
	FUNC1(ctx, csc_hdr, csc_regs,
		FUNC0(ctx, ctx->dev->csc, CSC_CSC00));
}