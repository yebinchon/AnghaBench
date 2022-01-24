#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long va; unsigned long pa; unsigned int sz; } ;
struct TYPE_7__ {unsigned long va; unsigned long pa; unsigned int sz; } ;
struct vdec_vp9_vsi {unsigned int pic_w; unsigned int pic_h; int buf_w; int buf_h; int /*<<< orphan*/  sf_next_ref_fb_idx; TYPE_3__ seg_id_buf; TYPE_2__ mv_buf; int /*<<< orphan*/  resolution_changed; } ;
struct mtk_vcodec_mem {int size; scalar_t__ dma_addr; scalar_t__ va; } ;
struct vdec_vp9_inst {TYPE_4__* ctx; struct mtk_vcodec_mem seg_id_buf; struct mtk_vcodec_mem mv_buf; struct vdec_vp9_vsi* vsi; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
struct TYPE_6__ {int dec_capability; } ;

/* Variables and functions */
 unsigned int MTK_VDEC_MAX_H ; 
 unsigned int MTK_VDEC_MAX_W ; 
 int VCODEC_CAPABILITY_4K_DISABLED ; 
 unsigned int VCODEC_DEC_4K_CODED_HEIGHT ; 
 unsigned int VCODEC_DEC_4K_CODED_WIDTH ; 
 int VP9_SEG_ID_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct vdec_vp9_inst*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_vp9_inst*,char*,...) ; 
 int FUNC2 (TYPE_4__*,struct mtk_vcodec_mem*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct mtk_vcodec_mem*) ; 
 int /*<<< orphan*/  FUNC4 (struct vdec_vp9_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct vdec_vp9_inst*) ; 

__attribute__((used)) static bool FUNC6(struct vdec_vp9_inst *inst)
{
	struct vdec_vp9_vsi *vsi = inst->vsi;
	int result;
	struct mtk_vcodec_mem *mem;

	unsigned int max_pic_w;
	unsigned int max_pic_h;


	if (!(inst->ctx->dev->dec_capability &
		VCODEC_CAPABILITY_4K_DISABLED)) {
		max_pic_w = VCODEC_DEC_4K_CODED_WIDTH;
		max_pic_h = VCODEC_DEC_4K_CODED_HEIGHT;
	} else {
		max_pic_w = MTK_VDEC_MAX_W;
		max_pic_h = MTK_VDEC_MAX_H;
	}

	if ((vsi->pic_w > max_pic_w) ||
		(vsi->pic_h > max_pic_h)) {
		FUNC1(inst, "Invalid w/h %d/%d",
				vsi->pic_w, vsi->pic_h);
		return false;
	}

	FUNC0(inst, "BUF CHG(%d): w/h/sb_w/sb_h=%d/%d/%d/%d",
			vsi->resolution_changed,
			vsi->pic_w,
			vsi->pic_h,
			vsi->buf_w,
			vsi->buf_h);

	mem = &inst->mv_buf;
	if (mem->va)
		FUNC3(inst->ctx, mem);

	mem->size = ((vsi->buf_w / 64) *
		    (vsi->buf_h / 64) + 2) * 36 * 16;
	result = FUNC2(inst->ctx, mem);
	if (result) {
		mem->size = 0;
		FUNC1(inst, "Cannot allocate mv_buf");
		return false;
	}
	/* Set the va again */
	vsi->mv_buf.va = (unsigned long)mem->va;
	vsi->mv_buf.pa = (unsigned long)mem->dma_addr;
	vsi->mv_buf.sz = (unsigned int)mem->size;


	mem = &inst->seg_id_buf;
	if (mem->va)
		FUNC3(inst->ctx, mem);

	mem->size = VP9_SEG_ID_SZ;
	result = FUNC2(inst->ctx, mem);
	if (result) {
		mem->size = 0;
		FUNC1(inst, "Cannot allocate seg_id_buf");
		return false;
	}
	/* Set the va again */
	vsi->seg_id_buf.va = (unsigned long)mem->va;
	vsi->seg_id_buf.pa = (unsigned long)mem->dma_addr;
	vsi->seg_id_buf.sz = (unsigned int)mem->size;


	FUNC4(inst);
	vsi->sf_next_ref_fb_idx = FUNC5(inst);

	return true;
}