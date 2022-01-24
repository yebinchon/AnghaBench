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
struct tda_state {int* m_Regs; } ;

/* Variables and functions */
 size_t EP4 ; 
 int FUNC0 (struct tda_state*,int*) ; 
 size_t TM ; 
 int FUNC1 (struct tda_state*,size_t) ; 
 int* m_Thermometer_Map_1 ; 
 int* m_Thermometer_Map_2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tda_state *state, u8 *pTM_Value)
{
	int status = 0;

	do {
		u8 Regs[16];
		state->m_Regs[TM] |= 0x10;
		status = FUNC1(state, TM);
		if (status < 0)
			break;
		status = FUNC0(state, Regs);
		if (status < 0)
			break;
		if (((Regs[TM] & 0x0F) == 0 && (Regs[TM] & 0x20) == 0x20) ||
		    ((Regs[TM] & 0x0F) == 8 && (Regs[TM] & 0x20) == 0x00)) {
			state->m_Regs[TM] ^= 0x20;
			status = FUNC1(state, TM);
			if (status < 0)
				break;
			FUNC2(10);
			status = FUNC0(state, Regs);
			if (status < 0)
				break;
		}
		*pTM_Value = (Regs[TM] & 0x20)
				? m_Thermometer_Map_2[Regs[TM] & 0x0F]
				: m_Thermometer_Map_1[Regs[TM] & 0x0F] ;
		state->m_Regs[TM] &= ~0x10;        /* Thermometer off */
		status = FUNC1(state, TM);
		if (status < 0)
			break;
		state->m_Regs[EP4] &= ~0x03;       /* CAL_mode = 0 ????????? */
		status = FUNC1(state, EP4);
		if (status < 0)
			break;
	} while (0);

	return status;
}