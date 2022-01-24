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
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int lock_bits; int /*<<< orphan*/  gain; } ;
struct cinergyt2_fe_state {TYPE_1__ status; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/ * data; int /*<<< orphan*/  d; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int /*<<< orphan*/  CINERGYT2_EP1_GET_TUNER_STATUS ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe,
				    enum fe_status *status)
{
	struct cinergyt2_fe_state *state = fe->demodulator_priv;
	int ret;

	FUNC3(&state->data_mutex);
	state->data[0] = CINERGYT2_EP1_GET_TUNER_STATUS;

	ret = FUNC0(state->d, state->data, 1,
				 state->data, sizeof(state->status), 0);
	if (!ret)
		FUNC2(&state->status, state->data, sizeof(state->status));
	FUNC4(&state->data_mutex);

	if (ret < 0)
		return ret;

	*status = 0;

	if (0xffff - FUNC1(state->status.gain) > 30)
		*status |= FE_HAS_SIGNAL;
	if (state->status.lock_bits & (1 << 6))
		*status |= FE_HAS_LOCK;
	if (state->status.lock_bits & (1 << 5))
		*status |= FE_HAS_SYNC;
	if (state->status.lock_bits & (1 << 4))
		*status |= FE_HAS_CARRIER;
	if (state->status.lock_bits & (1 << 1))
		*status |= FE_HAS_VITERBI;

	if ((*status & (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC)) !=
			(FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC))
		*status &= ~FE_HAS_LOCK;

	return 0;
}