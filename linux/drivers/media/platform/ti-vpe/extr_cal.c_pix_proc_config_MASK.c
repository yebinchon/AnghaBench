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
struct cal_ctx {int /*<<< orphan*/  csi2_port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_GEN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAL_PIX_PROC_CPORT_MASK ; 
 int /*<<< orphan*/  CAL_PIX_PROC_DPCMD_BYPASS ; 
 int /*<<< orphan*/  CAL_PIX_PROC_DPCMD_MASK ; 
 int /*<<< orphan*/  CAL_PIX_PROC_DPCME_BYPASS ; 
 int /*<<< orphan*/  CAL_PIX_PROC_DPCME_MASK ; 
 int /*<<< orphan*/  CAL_PIX_PROC_EN_MASK ; 
 int /*<<< orphan*/  CAL_PIX_PROC_EXTRACT_B8 ; 
 int /*<<< orphan*/  CAL_PIX_PROC_EXTRACT_MASK ; 
 int /*<<< orphan*/  CAL_PIX_PROC_PACK_B8 ; 
 int /*<<< orphan*/  CAL_PIX_PROC_PACK_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,struct cal_ctx*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cal_ctx *ctx)
{
	u32 val;

	val = FUNC2(ctx->dev, FUNC0(ctx->csi2_port));
	FUNC4(&val, CAL_PIX_PROC_EXTRACT_B8, CAL_PIX_PROC_EXTRACT_MASK);
	FUNC4(&val, CAL_PIX_PROC_DPCMD_BYPASS, CAL_PIX_PROC_DPCMD_MASK);
	FUNC4(&val, CAL_PIX_PROC_DPCME_BYPASS, CAL_PIX_PROC_DPCME_MASK);
	FUNC4(&val, CAL_PIX_PROC_PACK_B8, CAL_PIX_PROC_PACK_MASK);
	FUNC4(&val, ctx->csi2_port, CAL_PIX_PROC_CPORT_MASK);
	FUNC4(&val, CAL_GEN_ENABLE, CAL_PIX_PROC_EN_MASK);
	FUNC3(ctx->dev, FUNC0(ctx->csi2_port), val);
	FUNC1(3, ctx, "CAL_PIX_PROC(%d) = 0x%08x\n", ctx->csi2_port,
		FUNC2(ctx->dev, FUNC0(ctx->csi2_port)));
}