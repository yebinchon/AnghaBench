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
struct vdec_vp9_vsi {int /*<<< orphan*/  frm_num; int /*<<< orphan*/  pic_h; int /*<<< orphan*/  pic_w; int /*<<< orphan*/  show_existing_frame; } ;
struct vdec_vp9_inst {int /*<<< orphan*/  vpu; struct vdec_vp9_vsi* vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vdec_vp9_inst*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_vp9_inst*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vp9_inst*) ; 
 int FUNC3 (struct vdec_vp9_inst*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct vdec_vp9_inst *inst)
{
	struct vdec_vp9_vsi *vsi = inst->vsi;
	bool ret = false;

	if (!vsi->show_existing_frame) {
		ret = FUNC3(inst);
		if (!ret) {
			FUNC1(inst, "Decode failed, Decode Timeout @[%d]",
				vsi->frm_num);
			return false;
		}

		if (FUNC4(&inst->vpu)) {
			FUNC1(inst, "vp9_dec_vpu_end failed");
			return false;
		}
		FUNC0(inst, "Decode Ok @%d (%d/%d)", vsi->frm_num,
				vsi->pic_w, vsi->pic_h);
	} else {
		FUNC0(inst, "Decode Ok @%d (show_existing_frame)",
				vsi->frm_num);
	}

	FUNC2(inst);
	vsi->frm_num++;
	return true;
}