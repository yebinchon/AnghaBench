#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend_ops {int dummy; } ;
struct dvb_adapter {int dummy; } ;
struct TYPE_2__ {struct dst_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct dst_state {int dst_type; TYPE_1__ frontend; } ;

/* Variables and functions */
#define  DST_TYPE_IS_ATSC 131 
#define  DST_TYPE_IS_CABLE 130 
#define  DST_TYPE_IS_SAT 129 
#define  DST_TYPE_IS_TERR 128 
 int /*<<< orphan*/  dst_atsc_ops ; 
 int /*<<< orphan*/  dst_dvbc_ops ; 
 int /*<<< orphan*/  dst_dvbs_ops ; 
 int /*<<< orphan*/  dst_dvbt_ops ; 
 scalar_t__ FUNC0 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct dst_state *FUNC4(struct dst_state *state, struct dvb_adapter *dvb_adapter)
{
	/* check if the ASIC is there */
	if (FUNC0(state) < 0) {
		FUNC1(state);
		return NULL;
	}
	/* determine settings based on type */
	/* create dvb_frontend */
	switch (state->dst_type) {
	case DST_TYPE_IS_TERR:
		FUNC2(&state->frontend.ops, &dst_dvbt_ops, sizeof(struct dvb_frontend_ops));
		break;
	case DST_TYPE_IS_CABLE:
		FUNC2(&state->frontend.ops, &dst_dvbc_ops, sizeof(struct dvb_frontend_ops));
		break;
	case DST_TYPE_IS_SAT:
		FUNC2(&state->frontend.ops, &dst_dvbs_ops, sizeof(struct dvb_frontend_ops));
		break;
	case DST_TYPE_IS_ATSC:
		FUNC2(&state->frontend.ops, &dst_atsc_ops, sizeof(struct dvb_frontend_ops));
		break;
	default:
		FUNC3("unknown DST type. please report to the LinuxTV.org DVB mailinglist.\n");
		FUNC1(state);
		return NULL;
	}
	state->frontend.demodulator_priv = state;

	return state;				/*	Manu (DST is a card not a frontend)	*/
}