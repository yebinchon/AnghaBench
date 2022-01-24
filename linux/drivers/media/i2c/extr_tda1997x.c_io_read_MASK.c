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
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct v4l2_subdev*,int) ; 
 struct tda1997x_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline int FUNC6(struct v4l2_subdev *sd, u16 reg)
{
	struct tda1997x_state *state = FUNC4(sd);
	int val;

	FUNC1(&state->page_lock);
	if (FUNC3(sd, reg >> 8)) {
		val = -1;
		goto out;
	}

	val = FUNC0(state->client, reg&0xff);
	if (val < 0) {
		FUNC5(state->client, "read reg error: reg=%2x\n", reg & 0xff);
		val = -1;
		goto out;
	}

out:
	FUNC2(&state->page_lock);
	return val;
}