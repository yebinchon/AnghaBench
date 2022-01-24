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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct stv6110x_state {int /*<<< orphan*/ * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL1_K ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int REFCLOCK_MHz ; 
 int REFCLOCK_kHz ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  STAT1_CALVCO_STRT ; 
 size_t STV6110x_CTRL1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t STV6110x_STAT1 ; 
 size_t STV6110x_TNG0 ; 
 size_t STV6110x_TNG1 ; 
 int /*<<< orphan*/  TNG0_N_DIV_7_0 ; 
 int /*<<< orphan*/  TNG1_DIV4SEL ; 
 int /*<<< orphan*/  TNG1_N_DIV_11_8 ; 
 int /*<<< orphan*/  TNG1_PRESC32_ON ; 
 int /*<<< orphan*/  TNG1_R_DIV ; 
 scalar_t__ TRIALS ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct stv6110x_state*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct stv6110x_state*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe, u32 frequency)
{
	struct stv6110x_state *stv6110x = fe->tuner_priv;
	u32 rDiv, divider;
	s32 pVal, pCalc, rDivOpt = 0, pCalcOpt = 1000;
	u8 i;

	FUNC4(stv6110x->regs[STV6110x_CTRL1], CTRL1_K, (REFCLOCK_MHz - 16));

	if (frequency <= 1023000) {
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 1);
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 0);
		pVal = 40;
	} else if (frequency <= 1300000) {
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 1);
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 1);
		pVal = 40;
	} else if (frequency <= 2046000) {
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 0);
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 0);
		pVal = 20;
	} else {
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 0);
		FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 1);
		pVal = 20;
	}

	for (rDiv = 0; rDiv <= 3; rDiv++) {
		pCalc = (REFCLOCK_kHz / 100) / FUNC2(rDiv);

		if ((FUNC5((s32)(pCalc - pVal))) < (FUNC5((s32)(pCalcOpt - pVal))))
			rDivOpt = rDiv;

		pCalcOpt = (REFCLOCK_kHz / 100) / FUNC2(rDivOpt);
	}

	divider = (frequency * FUNC2(rDivOpt) * pVal) / REFCLOCK_kHz;
	divider = (divider + 5) / 10;

	FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_R_DIV, rDivOpt);
	FUNC4(stv6110x->regs[STV6110x_TNG1], TNG1_N_DIV_11_8, FUNC1(divider));
	FUNC4(stv6110x->regs[STV6110x_TNG0], TNG0_N_DIV_7_0, FUNC0(divider));

	/* VCO Auto calibration */
	FUNC4(stv6110x->regs[STV6110x_STAT1], STAT1_CALVCO_STRT, 1);

	FUNC8(stv6110x, STV6110x_CTRL1, stv6110x->regs[STV6110x_CTRL1]);
	FUNC8(stv6110x, STV6110x_TNG1, stv6110x->regs[STV6110x_TNG1]);
	FUNC8(stv6110x, STV6110x_TNG0, stv6110x->regs[STV6110x_TNG0]);
	FUNC8(stv6110x, STV6110x_STAT1, stv6110x->regs[STV6110x_STAT1]);

	for (i = 0; i < TRIALS; i++) {
		FUNC7(stv6110x, STV6110x_STAT1, &stv6110x->regs[STV6110x_STAT1]);
		if (!FUNC3(STAT1_CALVCO_STRT, stv6110x->regs[STV6110x_STAT1]))
				break;
		FUNC6(1);
	}

	return 0;
}