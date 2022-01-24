#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vdec_vp9_vsi {TYPE_3__* sf_ref_fb; } ;
struct vdec_vp9_inst {int /*<<< orphan*/  ctx; struct vdec_vp9_vsi* vsi; } ;
struct TYPE_5__ {scalar_t__ va; } ;
struct TYPE_4__ {TYPE_2__ base_c; TYPE_2__ base_y; } ;
struct TYPE_6__ {scalar_t__ used; TYPE_1__ fb; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct vdec_vp9_inst *inst)
{
	int i;
	struct vdec_vp9_vsi *vsi = inst->vsi;

	for (i = 0; i < FUNC0(vsi->sf_ref_fb); i++) {
		if (vsi->sf_ref_fb[i].fb.base_y.va) {
			FUNC1(inst->ctx,
				&vsi->sf_ref_fb[i].fb.base_y);
			FUNC1(inst->ctx,
				&vsi->sf_ref_fb[i].fb.base_c);
			vsi->sf_ref_fb[i].used = 0;
		}
	}
}