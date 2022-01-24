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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct tda_state {int* m_Regs; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct tda_state*,scalar_t__) ; 
 int FUNC1 (struct tda_state*,scalar_t__) ; 
 size_t EB13 ; 
 size_t EB14 ; 
 size_t EB18 ; 
 size_t EB20 ; 
 size_t EB4 ; 
 size_t EB7 ; 
 int EINVAL ; 
 size_t EP1 ; 
 size_t EP2 ; 
 size_t EP3 ; 
 size_t EP4 ; 
 size_t EP5 ; 
 size_t ID ; 
 int NUM_REGS ; 
 int FUNC2 (struct tda_state*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 int FUNC5 (struct tda_state*,size_t) ; 
 int FUNC6 (struct tda_state*,size_t,size_t) ; 
 int /*<<< orphan*/  m_BP_Filter_Map ; 
 int /*<<< orphan*/  m_GainTaper_Map ; 
 int /*<<< orphan*/  m_KM_Map ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct tda_state *state,
		       u8 RFBand, u32 freq, s32 *pCprog)
{
	int status = 0;
	u8 Regs[NUM_REGS];
	do {
		u8 BP_Filter = 0;
		u8 GainTaper = 0;
		u8 RFC_K = 0;
		u8 RFC_M = 0;

		state->m_Regs[EP4] &= ~0x03; /* CAL_mode = 0 */
		status = FUNC5(state, EP4);
		if (status < 0)
			break;
		state->m_Regs[EB18] |= 0x03;  /* AGC1_Gain = 3 */
		status = FUNC5(state, EB18);
		if (status < 0)
			break;

		/* Switching off LT (as datasheet says) causes calibration on C1 to fail */
		/* (Readout of Cprog is always 255) */
		if (state->m_Regs[ID] != 0x83)    /* C1: ID == 83, C2: ID == 84 */
			state->m_Regs[EP3] |= 0x40; /* SM_LT = 1 */

		if (!(FUNC3(m_BP_Filter_Map, freq, &BP_Filter) &&
			FUNC3(m_GainTaper_Map, freq, &GainTaper) &&
			FUNC4(m_KM_Map, freq, &RFC_K, &RFC_M)))
			return -EINVAL;

		state->m_Regs[EP1] = (state->m_Regs[EP1] & ~0x07) | BP_Filter;
		state->m_Regs[EP2] = (RFBand << 5) | GainTaper;

		state->m_Regs[EB13] = (state->m_Regs[EB13] & ~0x7C) | (RFC_K << 4) | (RFC_M << 2);

		status = FUNC6(state, EP1, EP3);
		if (status < 0)
			break;
		status = FUNC5(state, EB13);
		if (status < 0)
			break;

		state->m_Regs[EB4] |= 0x20;    /* LO_ForceSrce = 1 */
		status = FUNC5(state, EB4);
		if (status < 0)
			break;

		state->m_Regs[EB7] |= 0x20;    /* CAL_ForceSrce = 1 */
		status = FUNC5(state, EB7);
		if (status < 0)
			break;

		state->m_Regs[EB14] = 0; /* RFC_Cprog = 0 */
		status = FUNC5(state, EB14);
		if (status < 0)
			break;

		state->m_Regs[EB20] &= ~0x20;  /* ForceLock = 0; */
		status = FUNC5(state, EB20);
		if (status < 0)
			break;

		state->m_Regs[EP4] |= 0x03;  /* CAL_Mode = 3 */
		status = FUNC6(state, EP4, EP5);
		if (status < 0)
			break;

		status = FUNC0(state, freq);
		if (status < 0)
			break;
		status = FUNC1(state, freq + 1000000);
		if (status < 0)
			break;

		FUNC7(5);
		status = FUNC5(state, EP2);
		if (status < 0)
			break;
		status = FUNC5(state, EP1);
		if (status < 0)
			break;
		status = FUNC5(state, EP2);
		if (status < 0)
			break;
		status = FUNC5(state, EP1);
		if (status < 0)
			break;

		state->m_Regs[EB4] &= ~0x20;    /* LO_ForceSrce = 0 */
		status = FUNC5(state, EB4);
		if (status < 0)
			break;

		state->m_Regs[EB7] &= ~0x20;    /* CAL_ForceSrce = 0 */
		status = FUNC5(state, EB7);
		if (status < 0)
			break;
		FUNC7(10);

		state->m_Regs[EB20] |= 0x20;  /* ForceLock = 1; */
		status = FUNC5(state, EB20);
		if (status < 0)
			break;
		FUNC7(60);

		state->m_Regs[EP4] &= ~0x03;  /* CAL_Mode = 0 */
		state->m_Regs[EP3] &= ~0x40; /* SM_LT = 0 */
		state->m_Regs[EB18] &= ~0x03;  /* AGC1_Gain = 0 */
		status = FUNC5(state, EB18);
		if (status < 0)
			break;
		status = FUNC6(state, EP3, EP4);
		if (status < 0)
			break;
		status = FUNC5(state, EP1);
		if (status < 0)
			break;

		status = FUNC2(state, Regs);
		if (status < 0)
			break;

		*pCprog = Regs[EB14];

	} while (0);
	return status;
}