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
struct venc_vp8_inst {scalar_t__ ctx; } ;
struct mtk_vcodec_ctx {unsigned int irq_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_INST_IRQ_RECEIVED ; 
 int /*<<< orphan*/  WAIT_INTR_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct venc_vp8_inst*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_vcodec_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct venc_vp8_inst *inst)
{
	unsigned int irq_status = 0;
	struct mtk_vcodec_ctx *ctx = (struct mtk_vcodec_ctx *)inst->ctx;

	if (!FUNC1(ctx, MTK_INST_IRQ_RECEIVED,
					  WAIT_INTR_TIMEOUT_MS)) {
		irq_status = ctx->irq_status;
		FUNC0(inst, "isr return %x", irq_status);
	}
	return irq_status;
}