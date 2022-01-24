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
struct dtv_frontend_properties {int /*<<< orphan*/  modulation; int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  bandwidth_hz; int /*<<< orphan*/  inversion; int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {struct dst_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dst_state {scalar_t__ dst_type; int type_flags; } ;

/* Variables and functions */
 int DST_TYPE_HAS_OBS_REGS ; 
 scalar_t__ DST_TYPE_IS_CABLE ; 
 scalar_t__ DST_TYPE_IS_SAT ; 
 scalar_t__ DST_TYPE_IS_TERR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	int retval = -EINVAL;
	struct dst_state *state = fe->demodulator_priv;

	if (p != NULL) {
		retval = FUNC3(state, p->frequency);
		if(retval != 0)
			return retval;
		FUNC0(3, "Set Frequency=[%d]\n", p->frequency);

		if (state->dst_type == DST_TYPE_IS_SAT) {
			if (state->type_flags & DST_TYPE_HAS_OBS_REGS)
				FUNC4(state, p->inversion);
			FUNC2(state, p->fec_inner);
			FUNC7(state, p->symbol_rate);
			FUNC6(state);
			FUNC0(3, "Set Symbolrate=[%d]\n", p->symbol_rate);

		} else if (state->dst_type == DST_TYPE_IS_TERR)
			FUNC1(state, p->bandwidth_hz);
		else if (state->dst_type == DST_TYPE_IS_CABLE) {
			FUNC2(state, p->fec_inner);
			FUNC7(state, p->symbol_rate);
			FUNC5(state, p->modulation);
		}
		retval = FUNC8(fe);
	}

	return retval;
}