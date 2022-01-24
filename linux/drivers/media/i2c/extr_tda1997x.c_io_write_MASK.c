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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  client; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct v4l2_subdev*,int) ; 
 struct tda1997x_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, u16 reg, u8 val)
{
	struct tda1997x_state *state = FUNC4(sd);
	s32 ret = 0;

	FUNC1(&state->page_lock);
	if (FUNC3(sd, reg >> 8)) {
		ret = -1;
		goto out;
	}

	ret = FUNC0(state->client, reg & 0xff, val);
	if (ret < 0) {
		FUNC5(state->client, "write reg error:reg=%2x,val=%2x\n",
			reg&0xff, val);
		ret = -1;
		goto out;
	}

out:
	FUNC2(&state->page_lock);
	return ret;
}