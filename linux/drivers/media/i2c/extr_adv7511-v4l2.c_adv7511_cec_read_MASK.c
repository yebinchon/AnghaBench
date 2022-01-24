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
struct adv7511_state {int /*<<< orphan*/  i2c_cec; } ;

/* Variables and functions */
 struct adv7511_state* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct v4l2_subdev *sd, u8 reg)
{
	struct adv7511_state *state = FUNC0(sd);

	return FUNC1(state->i2c_cec, reg);
}