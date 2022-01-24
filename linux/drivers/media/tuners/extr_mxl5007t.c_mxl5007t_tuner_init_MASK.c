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
struct reg_pair_t {int dummy; } ;
struct mxl5007t_state {int dummy; } ;
typedef  enum mxl5007t_mode { ____Placeholder_mxl5007t_mode } mxl5007t_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct reg_pair_t* FUNC1 (struct mxl5007t_state*,int) ; 
 int FUNC2 (struct mxl5007t_state*,struct reg_pair_t*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mxl5007t_state *state,
			       enum mxl5007t_mode mode)
{
	struct reg_pair_t *init_regs;
	int ret;

	/* calculate initialization reg array */
	init_regs = FUNC1(state, mode);

	ret = FUNC2(state, init_regs);
	if (FUNC3(ret))
		goto fail;
	FUNC0(1);
fail:
	return ret;
}