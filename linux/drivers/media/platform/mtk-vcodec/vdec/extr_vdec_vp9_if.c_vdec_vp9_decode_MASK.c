#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct vdec_fb {int dummy; } ;
struct mtk_vcodec_mem {unsigned int size; scalar_t__ va; } ;
struct vdec_vp9_vsi {unsigned char* sf_bs_buf; unsigned int sf_frm_cnt; unsigned int sf_frm_idx; size_t sf_next_ref_fb_idx; size_t new_fb_idx; scalar_t__ frm_to_show_idx; scalar_t__ resolution_changed; TYPE_4__* frm_bufs; TYPE_5__* frm_refs; scalar_t__ show_existing_frame; int /*<<< orphan*/  frm_num; TYPE_2__* sf_ref_fb; int /*<<< orphan*/ * sf_frm_sz; scalar_t__* sf_frm_offset; int /*<<< orphan*/  sf_init; struct vdec_fb fb; struct mtk_vcodec_mem bs; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct vdec_vp9_inst {int /*<<< orphan*/  total_frm_cnt; struct vdec_fb* cur_fb; int /*<<< orphan*/  vpu; TYPE_1__ seg_id_buf; struct vdec_vp9_vsi* vsi; } ;
struct TYPE_10__ {unsigned int idx; TYPE_3__* buf; } ;
struct TYPE_8__ {struct vdec_fb* fb; } ;
struct TYPE_9__ {TYPE_3__ buf; } ;
struct TYPE_7__ {struct vdec_fb fb; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ VP9_MAX_FRM_BUF_NUM ; 
 unsigned int VP9_SUPER_FRAME_BS_SZ ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vp9_inst*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct vdec_vp9_inst*,char*) ; 
 int FUNC5 (struct vdec_vp9_inst*,struct vdec_vp9_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct vdec_vp9_inst*,struct vdec_fb*) ; 
 int /*<<< orphan*/  FUNC7 (struct vdec_vp9_inst*,struct vdec_fb*) ; 
 int /*<<< orphan*/  FUNC8 (struct vdec_vp9_inst*) ; 
 int FUNC9 (struct vdec_vp9_inst*) ; 
 scalar_t__ FUNC10 (struct vdec_vp9_inst*) ; 
 int /*<<< orphan*/  FUNC11 (struct vdec_vp9_inst*,struct vdec_fb*) ; 
 int /*<<< orphan*/  FUNC12 (struct vdec_vp9_inst*,size_t*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct vdec_vp9_inst*) ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned int*,int) ; 

__attribute__((used)) static int FUNC15(void *h_vdec, struct mtk_vcodec_mem *bs,
			   struct vdec_fb *fb, bool *res_chg)
{
	int ret = 0;
	struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
	struct vdec_vp9_vsi *vsi = inst->vsi;
	u32 data[3];
	int i;

	*res_chg = false;

	if ((bs == NULL) && (fb == NULL)) {
		FUNC3(inst, "[EOS]");
		FUNC13(inst);
		return ret;
	}

	if (bs == NULL) {
		FUNC4(inst, "bs == NULL");
		return -EINVAL;
	}

	FUNC3(inst, "Input BS Size = %zu", bs->size);

	while (1) {
		struct vdec_fb *cur_fb = NULL;

		data[0] = *((unsigned int *)bs->va);
		data[1] = *((unsigned int *)(bs->va + 4));
		data[2] = *((unsigned int *)(bs->va + 8));

		vsi->bs = *bs;

		if (fb)
			vsi->fb = *fb;

		if (!vsi->sf_init) {
			unsigned int sf_bs_sz;
			unsigned int sf_bs_off;
			unsigned char *sf_bs_src;
			unsigned char *sf_bs_dst;

			sf_bs_sz = bs->size > VP9_SUPER_FRAME_BS_SZ ?
					VP9_SUPER_FRAME_BS_SZ : bs->size;
			sf_bs_off = VP9_SUPER_FRAME_BS_SZ - sf_bs_sz;
			sf_bs_src = bs->va + bs->size - sf_bs_sz;
			sf_bs_dst = vsi->sf_bs_buf + sf_bs_off;
			FUNC1(sf_bs_dst, sf_bs_src, sf_bs_sz);
		} else {
			if ((vsi->sf_frm_cnt > 0) &&
				(vsi->sf_frm_idx < vsi->sf_frm_cnt)) {
				unsigned int idx = vsi->sf_frm_idx;

				FUNC1((void *)bs->va,
					(void *)(bs->va +
					vsi->sf_frm_offset[idx]),
					vsi->sf_frm_sz[idx]);
			}
		}
		FUNC2(inst->seg_id_buf.va, 0, inst->seg_id_buf.size);
		ret = FUNC14(&inst->vpu, data, 3);
		if (ret) {
			FUNC4(inst, "vpu_dec_start failed");
			goto DECODE_ERROR;
		}

		ret = FUNC5(inst, vsi);
		if (ret) {
			FUNC4(inst, "Invalid values from VPU.");
			goto DECODE_ERROR;
		}

		if (vsi->resolution_changed) {
			if (!FUNC8(inst)) {
				ret = -EIO;
				goto DECODE_ERROR;
			}
		}

		if (vsi->sf_frm_cnt > 0) {
			cur_fb = &vsi->sf_ref_fb[vsi->sf_next_ref_fb_idx].fb;

			if (vsi->sf_frm_idx < vsi->sf_frm_cnt)
				inst->cur_fb = cur_fb;
			else
				inst->cur_fb = fb;
		} else {
			inst->cur_fb = fb;
		}

		vsi->frm_bufs[vsi->new_fb_idx].buf.fb = inst->cur_fb;
		if (!FUNC11(inst, inst->cur_fb))
			FUNC7(inst, inst->cur_fb);

		FUNC3(inst, "[#pic %d]", vsi->frm_num);

		if (vsi->show_existing_frame)
			FUNC3(inst,
				"drv->new_fb_idx=%d, drv->frm_to_show_idx=%d",
				vsi->new_fb_idx, vsi->frm_to_show_idx);

		if (vsi->show_existing_frame && (vsi->frm_to_show_idx <
					VP9_MAX_FRM_BUF_NUM)) {
			FUNC3(inst,
				"Skip Decode drv->new_fb_idx=%d, drv->frm_to_show_idx=%d",
				vsi->new_fb_idx, vsi->frm_to_show_idx);

			FUNC12(inst, &vsi->new_fb_idx,
					vsi->frm_to_show_idx);
		}

		/* VPU assign the buffer pointer in its address space,
		 * reassign here
		 */
		for (i = 0; i < FUNC0(vsi->frm_refs); i++) {
			unsigned int idx = vsi->frm_refs[i].idx;

			vsi->frm_refs[i].buf = &vsi->frm_bufs[idx].buf;
		}

		if (vsi->resolution_changed) {
			*res_chg = true;
			FUNC3(inst, "VDEC_ST_RESOLUTION_CHANGED");

			ret = 0;
			goto DECODE_ERROR;
		}

		if (FUNC9(inst) != true) {
			FUNC4(inst, "vp9_decode_end_proc");
			ret = -EINVAL;
			goto DECODE_ERROR;
		}

		if (FUNC10(inst))
			break;

	}
	inst->total_frm_cnt++;

DECODE_ERROR:
	if (ret < 0)
		FUNC6(inst, fb);

	return ret;
}