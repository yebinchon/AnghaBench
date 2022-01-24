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
struct mux_control {int states; int cached_state; int idle_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int MUX_IDLE_AS_IS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mux_control*,int) ; 

__attribute__((used)) static int FUNC2(struct mux_control *mux, int state)
{
	int ret;

	if (FUNC0(state < 0 || state >= mux->states))
		return -EINVAL;

	if (mux->cached_state == state)
		return 0;

	ret = FUNC1(mux, state);
	if (ret >= 0)
		return 0;

	/* The mux update failed, try to revert if appropriate... */
	if (mux->idle_state != MUX_IDLE_AS_IS)
		FUNC1(mux, mux->idle_state);

	return ret;
}