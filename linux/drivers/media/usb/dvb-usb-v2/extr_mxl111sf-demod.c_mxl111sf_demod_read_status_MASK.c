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
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (struct mxl111sf_demod_state*,int*) ; 
 int FUNC1 (struct mxl111sf_demod_state*,int*) ; 
 int FUNC2 (struct mxl111sf_demod_state*,int*) ; 
 int FUNC3 (struct mxl111sf_demod_state*,int*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe,
				      enum fe_status *status)
{
	struct mxl111sf_demod_state *state = fe->demodulator_priv;
	int ret, locked, cr_lock, sync_lock, fec_lock;

	*status = 0;

	ret = FUNC1(state, &locked);
	if (FUNC4(ret))
		goto fail;
	ret = FUNC3(state, &cr_lock);
	if (FUNC4(ret))
		goto fail;
	ret = FUNC2(state, &sync_lock);
	if (FUNC4(ret))
		goto fail;
	ret = FUNC0(state, &fec_lock);
	if (FUNC4(ret))
		goto fail;

	if (locked)
		*status |= FE_HAS_SIGNAL;
	if (cr_lock)
		*status |= FE_HAS_CARRIER;
	if (sync_lock)
		*status |= FE_HAS_SYNC;
	if (fec_lock) /* false positives? */
		*status |= FE_HAS_VITERBI;

	if ((locked) && (cr_lock) && (sync_lock))
		*status |= FE_HAS_LOCK;
fail:
	return ret;
}