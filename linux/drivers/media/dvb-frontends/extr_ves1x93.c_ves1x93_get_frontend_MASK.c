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
struct ves1x93_state {scalar_t__ inversion; scalar_t__ frequency; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;
struct dtv_frontend_properties {int symbol_rate; int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  inversion; scalar_t__ frequency; } ;

/* Variables and functions */
 scalar_t__ INVERSION_AUTO ; 
 int /*<<< orphan*/  INVERSION_OFF ; 
 int /*<<< orphan*/  INVERSION_ON ; 
 int /*<<< orphan*/  FUNC0 (struct ves1x93_state*) ; 
 int FUNC1 (struct ves1x93_state*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				struct dtv_frontend_properties *p)
{
	struct ves1x93_state* state = fe->demodulator_priv;
	int afc;

	afc = ((int)((char)(FUNC1 (state, 0x0a) << 1)))/2;
	afc = (afc * (int)(p->symbol_rate/1000/8))/16;

	p->frequency = state->frequency - afc;

	/*
	 * inversion indicator is only valid
	 * if auto inversion was used
	 */
	if (state->inversion == INVERSION_AUTO)
		p->inversion = (FUNC1 (state, 0x0f) & 2) ?
				INVERSION_OFF : INVERSION_ON;
	p->fec_inner = FUNC0(state);
	/*  XXX FIXME: timing offset !! */

	return 0;
}