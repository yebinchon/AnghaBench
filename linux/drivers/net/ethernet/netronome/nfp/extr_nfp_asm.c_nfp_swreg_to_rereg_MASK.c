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
 int /*<<< orphan*/  NN_LM_MOD_NONE ; 
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
 int RE_REG_LM ; 
 int /*<<< orphan*/  RE_REG_LM_IDX ; 
 int RE_REG_LM_IDX_MAX ; 
 int RE_REG_NO_DST ; 
 int RE_REG_XFR ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC7(swreg reg, bool is_dst, bool has_imm8, bool *i8)
{
	u16 val = FUNC6(reg);
	bool lm_id;

	switch (FUNC5(reg)) {
	case NN_REG_GPR_A:
	case NN_REG_GPR_B:
	case NN_REG_GPR_BOTH:
		return val;
	case NN_REG_XFER:
		return RE_REG_XFR | val;
	case NN_REG_LMEM:
		lm_id = FUNC3(reg);

		if (FUNC4(reg) != NN_LM_MOD_NONE) {
			FUNC2("bad LM mode for restricted operands %d\n",
			       FUNC4(reg));
			return 0;
		}

		if (val & ~RE_REG_LM_IDX_MAX) {
			FUNC2("LM offset too large\n");
			return 0;
		}

		return RE_REG_LM | FUNC0(RE_REG_LM_IDX, lm_id) | val;
	case NN_REG_IMM:
		if (val & ~(0x7f | has_imm8 << 7)) {
			FUNC2("immediate too large\n");
			return 0;
		}
		*i8 = val & 0x80;
		return FUNC1(val & 0x7f);
	case NN_REG_NONE:
		return is_dst ? RE_REG_NO_DST : REG_NONE;
	case NN_REG_NNR:
		FUNC2("NNRs used with restricted encoding\n");
		return 0;
	}

	FUNC2("unrecognized reg encoding\n");
	return 0;
}