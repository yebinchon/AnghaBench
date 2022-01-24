#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* hwb; void* ld; void* misc; void* sys; void* hwd; void* cm; void* top; } ;
struct vdec_vp8_inst {int /*<<< orphan*/  ctx; TYPE_1__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDEC_CM ; 
 int /*<<< orphan*/  VDEC_HWB ; 
 int /*<<< orphan*/  VDEC_HWD ; 
 int /*<<< orphan*/  VDEC_LD ; 
 int /*<<< orphan*/  VDEC_MISC ; 
 int /*<<< orphan*/  VDEC_SYS ; 
 int /*<<< orphan*/  VDEC_TOP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vdec_vp8_inst *inst)
{
	inst->reg_base.top = FUNC0(inst->ctx, VDEC_TOP);
	inst->reg_base.cm = FUNC0(inst->ctx, VDEC_CM);
	inst->reg_base.hwd = FUNC0(inst->ctx, VDEC_HWD);
	inst->reg_base.sys = FUNC0(inst->ctx, VDEC_SYS);
	inst->reg_base.misc = FUNC0(inst->ctx, VDEC_MISC);
	inst->reg_base.ld = FUNC0(inst->ctx, VDEC_LD);
	inst->reg_base.hwb = FUNC0(inst->ctx, VDEC_HWB);
}