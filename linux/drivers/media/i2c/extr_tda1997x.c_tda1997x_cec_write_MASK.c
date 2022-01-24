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
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int /*<<< orphan*/  client; int /*<<< orphan*/  client_cec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tda1997x_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u8 reg, u8 val)
{
	struct tda1997x_state *state = FUNC1(sd);
	int ret = 0;

	ret = FUNC0(state->client_cec, reg, val);
	if (ret < 0) {
		FUNC2(state->client, "write reg error:reg=%2x,val=%2x\n",
			reg, val);
		ret = -1;
	}

	return ret;
}