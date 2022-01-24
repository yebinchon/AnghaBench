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
struct isp_device {int dummy; } ;
struct isp_csi2_device {scalar_t__ frame_skip; int output; int /*<<< orphan*/  regs1; struct isp_device* isp; } ;
struct isp_csi2_ctx_cfg {unsigned int ctxnum; int /*<<< orphan*/  format_id; } ;

/* Variables and functions */
 int CSI2_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int ISPCSI2_CTX_IRQSTATUS_FE_IRQ ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,struct isp_csi2_device*,struct isp_csi2_ctx_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,struct isp_csi2_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_csi2_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_csi2_device*) ; 
 int FUNC5 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct isp_csi2_device *csi2,
			 struct isp_csi2_ctx_cfg *ctx)
{
	struct isp_device *isp = csi2->isp;
	unsigned int n = ctx->ctxnum;
	u32 status;

	status = FUNC5(isp, csi2->regs1, FUNC0(n));
	FUNC6(isp, status, csi2->regs1, FUNC0(n));

	if (!(status & ISPCSI2_CTX_IRQSTATUS_FE_IRQ))
		return;

	/* Skip interrupts until we reach the frame skip count. The CSI2 will be
	 * automatically disabled, as the frame skip count has been programmed
	 * in the CSI2_CTx_CTRL1::COUNT field, so re-enable it.
	 *
	 * It would have been nice to rely on the FRAME_NUMBER interrupt instead
	 * but it turned out that the interrupt is only generated when the CSI2
	 * writes to memory (the CSI2_CTx_CTRL1::COUNT field is decreased
	 * correctly and reaches 0 when data is forwarded to the video port only
	 * but no interrupt arrives). Maybe a CSI2 hardware bug.
	 */
	if (csi2->frame_skip) {
		csi2->frame_skip--;
		if (csi2->frame_skip == 0) {
			ctx->format_id = FUNC3(csi2);
			FUNC1(isp, csi2, ctx);
			FUNC2(isp, csi2, n, 1);
		}
		return;
	}

	if (csi2->output & CSI2_OUTPUT_MEMORY)
		FUNC4(csi2);
}