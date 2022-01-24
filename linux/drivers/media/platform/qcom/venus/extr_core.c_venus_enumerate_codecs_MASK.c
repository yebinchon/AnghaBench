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
typedef  scalar_t__ u32 ;
struct venus_inst {int /*<<< orphan*/  lock; scalar_t__ session_type; struct venus_core* core; } ;
struct venus_core {scalar_t__ dec_codecs; scalar_t__ enc_codecs; TYPE_1__* res; } ;
struct hfi_inst_ops {int dummy; } ;
struct TYPE_2__ {scalar_t__ hfi_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HFI_VERSION_1XX ; 
 unsigned int MAX_CODEC_NUM ; 
 scalar_t__ VIDC_SESSION_TYPE_DEC ; 
 int FUNC0 (struct venus_inst*,struct hfi_inst_ops const*) ; 
 int FUNC1 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_inst*) ; 
 struct venus_inst* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct venus_core *core, u32 type)
{
	const struct hfi_inst_ops dummy_ops = {};
	struct venus_inst *inst;
	u32 codec, codecs;
	unsigned int i;
	int ret;

	if (core->res->hfi_version != HFI_VERSION_1XX)
		return 0;

	inst = FUNC5(sizeof(*inst), GFP_KERNEL);
	if (!inst)
		return -ENOMEM;

	FUNC7(&inst->lock);
	inst->core = core;
	inst->session_type = type;
	if (type == VIDC_SESSION_TYPE_DEC)
		codecs = core->dec_codecs;
	else
		codecs = core->enc_codecs;

	ret = FUNC0(inst, &dummy_ops);
	if (ret)
		goto err;

	for (i = 0; i < MAX_CODEC_NUM; i++) {
		codec = (1UL << i) & codecs;
		if (!codec)
			continue;

		ret = FUNC3(inst, FUNC8(codec));
		if (ret)
			goto done;

		ret = FUNC1(inst);
		if (ret)
			goto done;
	}

done:
	FUNC2(inst);
err:
	FUNC6(&inst->lock);
	FUNC4(inst);

	return ret;
}