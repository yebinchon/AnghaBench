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
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct dst_state* demodulator_priv; } ;
struct dst_state {scalar_t__ dst_type; int type_flags; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int DST_TYPE_HAS_OBS_REGS ; 
 scalar_t__ DST_TYPE_IS_CABLE ; 
 scalar_t__ DST_TYPE_IS_SAT ; 
 scalar_t__ DST_TYPE_IS_TERR ; 
 unsigned int FE_TUNE_MODE_ONESHOT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend* fe,
			    bool re_tune,
			    unsigned int mode_flags,
			    unsigned int *delay,
			    enum fe_status *status)
{
	struct dst_state *state = fe->demodulator_priv;
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;

	if (re_tune) {
		FUNC4(state, p->frequency);
		FUNC0(3, "Set Frequency=[%d]\n", p->frequency);

		if (state->dst_type == DST_TYPE_IS_SAT) {
			if (state->type_flags & DST_TYPE_HAS_OBS_REGS)
				FUNC5(state, p->inversion);
			FUNC3(state, p->fec_inner);
			FUNC8(state, p->symbol_rate);
			FUNC7(state);
			FUNC0(3, "Set Symbolrate=[%d]\n", p->symbol_rate);

		} else if (state->dst_type == DST_TYPE_IS_TERR)
			FUNC2(state, p->bandwidth_hz);
		else if (state->dst_type == DST_TYPE_IS_CABLE) {
			FUNC3(state, p->fec_inner);
			FUNC8(state, p->symbol_rate);
			FUNC6(state, p->modulation);
		}
		FUNC9(fe);
	}

	if (!(mode_flags & FE_TUNE_MODE_ONESHOT))
		FUNC1(fe, status);

	*delay = HZ/10;
	return 0;
}