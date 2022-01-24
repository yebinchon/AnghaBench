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
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_afe {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adv748x_afe*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct adv748x_state* FUNC1 (struct adv748x_afe*) ; 
 struct adv748x_afe* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, u32 *status)
{
	struct adv748x_afe *afe = FUNC2(sd);
	struct adv748x_state *state = FUNC1(afe);
	int ret;

	FUNC3(&state->mutex);

	ret = FUNC0(afe, status, NULL);

	FUNC4(&state->mutex);

	return ret;
}