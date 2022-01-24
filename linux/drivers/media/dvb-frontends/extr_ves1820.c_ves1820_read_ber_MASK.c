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
typedef  int u32 ;
struct ves1820_state {int dummy; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct ves1820_state*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, u32* ber)
{
	struct ves1820_state* state = fe->demodulator_priv;

	u32 _ber = FUNC0(state, 0x14) |
			(FUNC0(state, 0x15) << 8) |
			((FUNC0(state, 0x16) & 0x0f) << 16);
	*ber = 10 * _ber;

	return 0;
}