#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* gain; TYPE_1__* exposure; } ;
struct s5k5baf {TYPE_3__ ctrls; } ;
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
struct TYPE_4__ {unsigned int val; } ;

/* Variables and functions */
 int AALG_AE_EN ; 
 int AALG_DIVLEI_EN ; 
 int V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct s5k5baf*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct s5k5baf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s5k5baf *state, int value)
{
	if (value == V4L2_EXPOSURE_AUTO) {
		FUNC0(state, AALG_AE_EN | AALG_DIVLEI_EN, true);
	} else {
		unsigned int exp_time = state->ctrls.exposure->val;

		FUNC1(state, exp_time);
		FUNC2(state, state->ctrls.gain->val);
		FUNC0(state, AALG_AE_EN | AALG_DIVLEI_EN, false);
	}
}