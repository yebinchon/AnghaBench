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
struct tda1997x_state {int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDA1997X_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tda1997x_state *state, bool on)
{
	int ret = 0;

	if (on) {
		ret = FUNC2(TDA1997X_NUM_SUPPLIES,
					     state->supplies);
		FUNC0(300);
	} else {
		ret = FUNC1(TDA1997X_NUM_SUPPLIES,
					     state->supplies);
	}

	return ret;
}