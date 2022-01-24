#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct venus_inst {int out_width; int out_height; int opb_fmt; int dpb_fmt; void* output_buf_size; void* output2_buf_size; void* dpb_buftype; void* opb_buftype; TYPE_2__* fmt_cap; struct venus_core* core; } ;
struct venus_core {TYPE_1__* res; } ;
struct hfi_enable {int enable; } ;
struct TYPE_4__ {int /*<<< orphan*/  pixfmt; } ;
struct TYPE_3__ {scalar_t__ hfi_version; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 void* HFI_BUFFER_OUTPUT ; 
 void* HFI_BUFFER_OUTPUT2 ; 
 int HFI_PROPERTY_PARAM_VDEC_CONTINUE_DATA_TRANSFER ; 
 scalar_t__ HFI_VERSION_1XX ; 
 scalar_t__ FUNC1 (struct venus_core*) ; 
 scalar_t__ FUNC2 (struct venus_core*) ; 
 int /*<<< orphan*/  VIDC_CORE_ID_1 ; 
 int /*<<< orphan*/  VIDC_WORK_MODE_2 ; 
 int FUNC3 (struct venus_inst*,int,struct hfi_enable*) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (int,int,int) ; 
 int FUNC6 (struct venus_inst*,int /*<<< orphan*/ ,int*,int*,int) ; 
 int FUNC7 (struct venus_inst*,void*,void*) ; 
 int FUNC8 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct venus_inst*) ; 
 int FUNC10 (struct venus_inst*,int,int) ; 
 int FUNC11 (struct venus_inst*,int,int,void*) ; 
 int FUNC12 (struct venus_inst*,int,void*) ; 
 int FUNC13 (struct venus_inst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct venus_inst *inst)
{
	struct venus_core *core = inst->core;
	struct hfi_enable en = { .enable = 1 };
	u32 width = inst->out_width;
	u32 height = inst->out_height;
	u32 out_fmt, out2_fmt;
	bool ubwc = false;
	u32 ptype;
	int ret;

	ret = FUNC13(inst, VIDC_WORK_MODE_2);
	if (ret)
		return ret;

	ret = FUNC8(inst, VIDC_CORE_ID_1);
	if (ret)
		return ret;

	if (core->res->hfi_version == HFI_VERSION_1XX) {
		ptype = HFI_PROPERTY_PARAM_VDEC_CONTINUE_DATA_TRANSFER;
		ret = FUNC3(inst, ptype, &en);
		if (ret)
			return ret;
	}

	/* Force searching UBWC formats for bigger then HD resolutions */
	if (width > 1920 && height > FUNC0(1080, 32))
		ubwc = true;

	/* For Venus v4 UBWC format is mandatory */
	if (FUNC2(core))
		ubwc = true;

	ret = FUNC6(inst, inst->fmt_cap->pixfmt, &out_fmt,
					&out2_fmt, ubwc);
	if (ret)
		return ret;

	inst->output_buf_size =
			FUNC5(out_fmt, width, height);
	inst->output2_buf_size =
			FUNC5(out2_fmt, width, height);

	if (FUNC4(out_fmt)) {
		inst->opb_buftype = HFI_BUFFER_OUTPUT2;
		inst->opb_fmt = out2_fmt;
		inst->dpb_buftype = HFI_BUFFER_OUTPUT;
		inst->dpb_fmt = out_fmt;
	} else if (FUNC4(out2_fmt)) {
		inst->opb_buftype = HFI_BUFFER_OUTPUT;
		inst->opb_fmt = out_fmt;
		inst->dpb_buftype = HFI_BUFFER_OUTPUT2;
		inst->dpb_fmt = out2_fmt;
	} else {
		inst->opb_buftype = HFI_BUFFER_OUTPUT;
		inst->opb_fmt = out_fmt;
		inst->dpb_buftype = 0;
		inst->dpb_fmt = 0;
	}

	ret = FUNC12(inst, inst->opb_fmt,
					  inst->opb_buftype);
	if (ret)
		return ret;

	if (inst->dpb_fmt) {
		ret = FUNC10(inst, false, true);
		if (ret)
			return ret;

		ret = FUNC12(inst, inst->dpb_fmt,
						  inst->dpb_buftype);
		if (ret)
			return ret;

		ret = FUNC11(inst, width, height,
							 HFI_BUFFER_OUTPUT2);
		if (ret)
			return ret;
	}

	if (FUNC1(core) || FUNC2(core)) {
		if (inst->output2_buf_size) {
			ret = FUNC7(inst,
						       inst->output2_buf_size,
						       HFI_BUFFER_OUTPUT2);
			if (ret)
				return ret;
		}

		if (inst->output_buf_size) {
			ret = FUNC7(inst,
						       inst->output_buf_size,
						       HFI_BUFFER_OUTPUT);
			if (ret)
				return ret;
		}
	}

	ret = FUNC9(inst);
	if (ret)
		return ret;

	return 0;
}