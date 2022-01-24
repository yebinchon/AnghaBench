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
struct mtk_vcodec_mem {scalar_t__ va; } ;
struct vdec_vp9_inst {int /*<<< orphan*/  ctx; struct mtk_vcodec_mem seg_id_buf; struct mtk_vcodec_mem mv_buf; int /*<<< orphan*/  vpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vdec_vp9_inst*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mtk_vcodec_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vp9_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vp9_inst*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *h_vdec)
{
	struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
	struct mtk_vcodec_mem *mem;
	int ret = 0;

	ret = FUNC4(&inst->vpu);
	if (ret)
		FUNC0(inst, "vpu_dec_deinit failed");

	mem = &inst->mv_buf;
	if (mem->va)
		FUNC1(inst->ctx, mem);

	mem = &inst->seg_id_buf;
	if (mem->va)
		FUNC1(inst->ctx, mem);

	FUNC2(inst);
	FUNC3(inst);
}