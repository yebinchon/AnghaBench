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
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
#define  MXL111SF_GPIO_MOD_ATSC 129 
#define  MXL111SF_GPIO_MOD_MH 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxl111sf_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

int FUNC4(struct mxl111sf_state *state, unsigned int mode)
{
/*	GPO:
 *	3 - ATSC/MH#   | 1 = ATSC transport, 0 = MH transport      | default 0
 *	4 - ATSC_RST## | 1 = ATSC enable, 0 = ATSC Reset           | default 0
 *	5 - ATSC_EN    | 1 = ATSC power enable, 0 = ATSC power off | default 0
 *	6 - MH_RESET#  | 1 = MH enable, 0 = MH Reset               | default 0
 *	7 - MH_EN      | 1 = MH power enable, 0 = MH power off     | default 0
 */
	FUNC3("(%d)", mode);

	switch (mode) {
	case MXL111SF_GPIO_MOD_MH:
		FUNC2(state, 4, 0);
		FUNC2(state, 5, 0);
		FUNC0(50);
		FUNC2(state, 7, 1);
		FUNC0(50);
		FUNC2(state, 6, 1);
		FUNC0(50);

		FUNC2(state, 3, 0);
		break;
	case MXL111SF_GPIO_MOD_ATSC:
		FUNC2(state, 6, 0);
		FUNC2(state, 7, 0);
		FUNC0(50);
		FUNC2(state, 5, 1);
		FUNC0(50);
		FUNC2(state, 4, 1);
		FUNC0(50);
		FUNC2(state, 3, 1);
		break;
	default: /* DVBT / STANDBY */
		FUNC1(state);
		break;
	}
	return 0;
}