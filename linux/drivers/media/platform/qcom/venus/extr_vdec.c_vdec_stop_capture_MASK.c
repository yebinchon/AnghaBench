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
struct venus_inst {int codec_state; int /*<<< orphan*/  registeredbufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_FLUSH_ALL ; 
 int /*<<< orphan*/  HFI_FLUSH_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VENUS_DEC_STATE_CAPTURE_SETUP ; 
#define  VENUS_DEC_STATE_DECODING 130 
#define  VENUS_DEC_STATE_DRAIN 129 
#define  VENUS_DEC_STATE_DRC 128 
 int VENUS_DEC_STATE_STOPPED ; 
 int FUNC1 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_inst*) ; 

__attribute__((used)) static int FUNC4(struct venus_inst *inst)
{
	int ret = 0;

	switch (inst->codec_state) {
	case VENUS_DEC_STATE_DECODING:
		ret = FUNC1(inst, HFI_FLUSH_ALL);
		/* fallthrough */
	case VENUS_DEC_STATE_DRAIN:
		FUNC2(inst);
		inst->codec_state = VENUS_DEC_STATE_STOPPED;
		break;
	case VENUS_DEC_STATE_DRC:
		ret = FUNC1(inst, HFI_FLUSH_OUTPUT);
		FUNC2(inst);
		inst->codec_state = VENUS_DEC_STATE_CAPTURE_SETUP;
		FUNC0(&inst->registeredbufs);
		FUNC3(inst);
		break;
	default:
		return 0;
	}

	return ret;
}