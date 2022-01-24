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
typedef  int u16 ;
typedef  int /*<<< orphan*/  swreg ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  NN_LM_MOD_DEC 138 
#define  NN_LM_MOD_INC 137 
#define  NN_LM_MOD_NONE 136 
#define  NN_REG_GPR_A 135 
#define  NN_REG_GPR_B 134 
#define  NN_REG_GPR_BOTH 133 
#define  NN_REG_IMM 132 
#define  NN_REG_LMEM 131 
#define  NN_REG_NNR 130 
#define  NN_REG_NONE 129 
#define  NN_REG_XFER 128 
 int REG_NONE ; 
 int FUNC1 (int) ; 
 int UR_REG_LM ; 
 int /*<<< orphan*/  UR_REG_LM_IDX ; 
 int UR_REG_LM_IDX_MAX ; 
 int UR_REG_LM_POST_MOD ; 
 int /*<<< orphan*/  UR_REG_LM_POST_MOD_DEC ; 
 int UR_REG_NN ; 
 int UR_REG_NO_DST ; 
 int UR_REG_XFR ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC7(swreg reg, bool is_dst)
{
	bool lm_id, lm_dec = false;
	u16 val = FUNC6(reg);

	switch (FUNC5(reg)) {
	case NN_REG_GPR_A:
	case NN_REG_GPR_B:
	case NN_REG_GPR_BOTH:
		return val;
	case NN_REG_NNR:
		return UR_REG_NN | val;
	case NN_REG_XFER:
		return UR_REG_XFR | val;
	case NN_REG_LMEM:
		lm_id = FUNC3(reg);

		switch (FUNC4(reg)) {
		case NN_LM_MOD_NONE:
			if (val & ~UR_REG_LM_IDX_MAX) {
				FUNC2("LM offset too large\n");
				return 0;
			}
			return UR_REG_LM | FUNC0(UR_REG_LM_IDX, lm_id) |
				val;
		case NN_LM_MOD_DEC:
			lm_dec = true;
			/* fall through */
		case NN_LM_MOD_INC:
			if (val) {
				FUNC2("LM offset in inc/dev mode\n");
				return 0;
			}
			return UR_REG_LM | UR_REG_LM_POST_MOD |
				FUNC0(UR_REG_LM_IDX, lm_id) |
				FUNC0(UR_REG_LM_POST_MOD_DEC, lm_dec);
		default:
			FUNC2("bad LM mode for unrestricted operands %d\n",
			       FUNC4(reg));
			return 0;
		}
	case NN_REG_IMM:
		if (val & ~0xff) {
			FUNC2("immediate too large\n");
			return 0;
		}
		return FUNC1(val);
	case NN_REG_NONE:
		return is_dst ? UR_REG_NO_DST : REG_NONE;
	}

	FUNC2("unrecognized reg encoding %08x\n", reg);
	return 0;
}