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
struct venus_inst {scalar_t__ codec_state; int reconfig; int streamon_out; int /*<<< orphan*/  num_input_bufs; scalar_t__ sequence_out; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VB2_MAX_FRAME ; 
 scalar_t__ VENUS_DEC_STATE_CAPTURE_SETUP ; 
 scalar_t__ VENUS_DEC_STATE_DECODING ; 
 scalar_t__ VENUS_DEC_STATE_DEINIT ; 
 scalar_t__ VENUS_DEC_STATE_INIT ; 
 scalar_t__ VENUS_DEC_STATE_SEEK ; 
 int FUNC0 (struct venus_inst*) ; 
 int FUNC1 (struct venus_inst*) ; 
 int FUNC2 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_inst*) ; 
 int FUNC4 (struct venus_inst*) ; 
 int FUNC5 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct venus_inst*) ; 

__attribute__((used)) static int FUNC7(struct venus_inst *inst)
{
	int ret;

	if (inst->codec_state == VENUS_DEC_STATE_SEEK) {
		ret = FUNC4(inst);
		inst->codec_state = VENUS_DEC_STATE_DECODING;
		goto done;
	}

	if (inst->codec_state == VENUS_DEC_STATE_INIT ||
	    inst->codec_state == VENUS_DEC_STATE_CAPTURE_SETUP) {
		ret = FUNC4(inst);
		goto done;
	}

	if (inst->codec_state != VENUS_DEC_STATE_DEINIT)
		return -EINVAL;

	FUNC3(inst);
	inst->sequence_out = 0;
	inst->reconfig = false;

	ret = FUNC1(inst);
	if (ret)
		return ret;

	ret = FUNC0(inst);
	if (ret)
		return ret;

	ret = FUNC2(inst);
	if (ret)
		return ret;

	ret = FUNC5(inst, inst->num_input_bufs,
					VB2_MAX_FRAME, VB2_MAX_FRAME);
	if (ret)
		return ret;

	ret = FUNC6(inst);
	if (ret)
		return ret;

	ret = FUNC4(inst);
	if (ret)
		return ret;

	inst->codec_state = VENUS_DEC_STATE_INIT;

done:
	inst->streamon_out = 1;
	return ret;
}