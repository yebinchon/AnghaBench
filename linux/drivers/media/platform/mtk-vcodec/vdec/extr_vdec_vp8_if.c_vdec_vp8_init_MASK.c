#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vdec_vp8_vsi {int dummy; } ;
struct TYPE_5__ {scalar_t__ vsi; int /*<<< orphan*/  handler; struct mtk_vcodec_ctx* ctx; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct vdec_vp8_inst {TYPE_2__ vpu; struct vdec_vp8_vsi* vsi; struct mtk_vcodec_ctx* ctx; } ;
struct mtk_vcodec_ctx {struct vdec_vp8_inst* drv_handle; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vpu_plat_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPI_VDEC_VP8 ; 
 int FUNC0 (struct vdec_vp8_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_vp8_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vp8_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vp8_inst*) ; 
 struct vdec_vp8_inst* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vdec_vp8_inst*,char*,struct vdec_vp8_inst*) ; 
 int /*<<< orphan*/  FUNC6 (struct vdec_vp8_inst*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  vpu_dec_ipi_handler ; 

__attribute__((used)) static int FUNC9(struct mtk_vcodec_ctx *ctx)
{
	struct vdec_vp8_inst *inst;
	int err;

	inst = FUNC4(sizeof(*inst), GFP_KERNEL);
	if (!inst)
		return  -ENOMEM;

	inst->ctx = ctx;

	inst->vpu.id = IPI_VDEC_VP8;
	inst->vpu.dev = ctx->dev->vpu_plat_dev;
	inst->vpu.ctx = ctx;
	inst->vpu.handler = vpu_dec_ipi_handler;

	err = FUNC8(&inst->vpu);
	if (err) {
		FUNC6(inst, "vdec_vp8 init err=%d", err);
		goto error_free_inst;
	}

	inst->vsi = (struct vdec_vp8_vsi *)inst->vpu.vsi;
	FUNC2(inst);
	err = FUNC0(inst);
	if (err)
		goto error_deinit;

	FUNC1(inst);
	FUNC5(inst, "VP8 Instance >> %p", inst);

	ctx->drv_handle = inst;
	return 0;

error_deinit:
	FUNC7(&inst->vpu);
error_free_inst:
	FUNC3(inst);
	return err;
}