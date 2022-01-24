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
typedef  int /*<<< orphan*/  u32 ;
struct mxl111sf_tuner_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_tuner_state* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUNER_STATUS_LOCKED ; 
 int FUNC0 (struct mxl111sf_tuner_state*,int*,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u32 *status)
{
	struct mxl111sf_tuner_state *state = fe->tuner_priv;
	int rf_locked, ref_locked, ret;

	*status = 0;

	ret = FUNC0(state, &rf_locked, &ref_locked);
	if (FUNC1(ret))
		goto fail;
	FUNC2("%s%s", rf_locked ? "rf locked " : "",
		 ref_locked ? "ref locked" : "");

	if ((rf_locked) || (ref_locked))
		*status |= TUNER_STATUS_LOCKED;
fail:
	return ret;
}