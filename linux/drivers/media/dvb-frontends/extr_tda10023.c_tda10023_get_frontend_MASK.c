#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dvb; } ;
struct tda10023_state {int reg0; TYPE_2__ frontend; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;
struct dtv_frontend_properties {int inversion; int frequency; scalar_t__ symbol_rate; int /*<<< orphan*/  fec_inner; scalar_t__ modulation; } ;
typedef  int s8 ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_NONE ; 
 scalar_t__ QAM_16 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct tda10023_state*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				 struct dtv_frontend_properties *p)
{
	struct tda10023_state* state = fe->demodulator_priv;
	int sync,inv;
	s8 afc = 0;

	sync = FUNC1(state, 0x11);
	afc = FUNC1(state, 0x19);
	inv = FUNC1(state, 0x04);

	if (verbose) {
		/* AFC only valid when carrier has been recovered */
		FUNC0(sync & 2 ? "DVB: TDA10023(%d): AFC (%d) %dHz\n" :
				  "DVB: TDA10023(%d): [AFC (%d) %dHz]\n",
			state->frontend.dvb->num, afc,
		       -((s32)p->symbol_rate * afc) >> 10);
	}

	p->inversion = (inv&0x20?0:1);
	p->modulation = ((state->reg0 >> 2) & 7) + QAM_16;

	p->fec_inner = FEC_NONE;
	p->frequency = ((p->frequency + 31250) / 62500) * 62500;

	if (sync & 2)
		p->frequency -= ((s32)p->symbol_rate * afc) >> 10;

	return 0;
}