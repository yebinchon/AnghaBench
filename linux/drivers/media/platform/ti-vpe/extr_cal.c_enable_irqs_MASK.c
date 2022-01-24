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
struct cal_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  csi2_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CAL_HL_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cal_ctx *ctx)
{
	/* Enable IRQ_WDMA_END 0/1 */
	FUNC4(ctx->dev,
			FUNC1(2),
			CAL_HL_IRQ_ENABLE,
			FUNC2(ctx->csi2_port));
	/* Enable IRQ_WDMA_START 0/1 */
	FUNC4(ctx->dev,
			FUNC1(3),
			CAL_HL_IRQ_ENABLE,
			FUNC2(ctx->csi2_port));
	/* Todo: Add VC_IRQ and CSI2_COMPLEXIO_IRQ handling */
	FUNC3(ctx->dev, FUNC0(1), 0xFF000000);
}