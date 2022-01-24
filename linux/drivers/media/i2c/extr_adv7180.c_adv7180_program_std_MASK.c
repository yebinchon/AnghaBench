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
struct adv7180_state {int /*<<< orphan*/  curr_norm; } ;

/* Variables and functions */
 int FUNC0 (struct adv7180_state*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adv7180_state *state)
{
	int ret;

	ret = FUNC1(state->curr_norm);
	if (ret < 0)
		return ret;

	ret = FUNC0(state, ret);
	if (ret < 0)
		return ret;
	return 0;
}