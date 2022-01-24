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
struct venus_inst {scalar_t__ codec_state; int reconfig; int streamon_cap; scalar_t__ sequence_cap; int /*<<< orphan*/  core; int /*<<< orphan*/  num_input_bufs; int /*<<< orphan*/  streamon_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_FLUSH_OUTPUT ; 
 int /*<<< orphan*/  VB2_MAX_FRAME ; 
 scalar_t__ VENUS_DEC_STATE_DECODING ; 
 scalar_t__ VENUS_DEC_STATE_STOPPED ; 
 int FUNC0 (struct venus_inst*) ; 
 int FUNC1 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_inst*) ; 
 int FUNC5 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct venus_inst*) ; 
 int FUNC8 (struct venus_inst*) ; 
 int FUNC9 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct venus_inst *inst)
{
	int ret;

	if (!inst->streamon_out)
		return 0;

	if (inst->codec_state == VENUS_DEC_STATE_DECODING) {
		if (inst->reconfig)
			goto reconfigure;

		FUNC8(inst);
		FUNC7(inst);
		inst->streamon_cap = 1;
		return 0;
	}

	if (inst->codec_state != VENUS_DEC_STATE_STOPPED)
		return 0;

reconfigure:
	ret = FUNC1(inst, HFI_FLUSH_OUTPUT);
	if (ret)
		return ret;

	ret = FUNC2(inst);
	if (ret)
		return ret;

	ret = FUNC9(inst, inst->num_input_bufs,
					VB2_MAX_FRAME, VB2_MAX_FRAME);
	if (ret)
		return ret;

	ret = FUNC5(inst);
	if (ret)
		goto err;

	ret = FUNC3(inst);
	if (ret)
		goto err;

	ret = FUNC8(inst);
	if (ret)
		goto free_dpb_bufs;

	ret = FUNC7(inst);
	if (ret)
		goto free_dpb_bufs;

	FUNC6(inst->core);

	ret = FUNC0(inst);
	if (ret)
		goto free_dpb_bufs;

	inst->codec_state = VENUS_DEC_STATE_DECODING;

	inst->streamon_cap = 1;
	inst->sequence_cap = 0;
	inst->reconfig = false;

	return 0;

free_dpb_bufs:
	FUNC4(inst);
err:
	return ret;
}