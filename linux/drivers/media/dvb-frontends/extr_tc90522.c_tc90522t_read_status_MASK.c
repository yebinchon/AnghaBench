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
struct tc90522_state {int dummy; } ;
struct dvb_frontend {struct tc90522_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (struct tc90522_state*,int,int*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, enum fe_status *status)
{
	struct tc90522_state *state;
	int ret;
	u8 reg;

	state = fe->demodulator_priv;
	ret = FUNC0(state, 0x96, &reg, 1);
	if (ret < 0)
		return ret;

	*status = 0;
	if (reg & 0xe0) {
		*status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI
				| FE_HAS_SYNC | FE_HAS_LOCK;
		return 0;
	}

	ret = FUNC0(state, 0x80, &reg, 1);
	if (ret < 0)
		return ret;

	if (reg & 0xf0)
		return 0;
	*status |= FE_HAS_SIGNAL | FE_HAS_CARRIER;

	if (reg & 0x0c)
		return 0;
	*status |= FE_HAS_SYNC | FE_HAS_VITERBI;

	if (reg & 0x02)
		return 0;
	*status |= FE_HAS_LOCK;
	return 0;
}