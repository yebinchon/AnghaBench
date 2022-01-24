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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_afe {int /*<<< orphan*/  curr_norm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adv748x_state*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct adv748x_state* FUNC2 (struct adv748x_afe*) ; 
 struct adv748x_afe* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct adv748x_afe *afe = FUNC3(sd);
	struct adv748x_state *state = FUNC2(afe);
	int afe_std = FUNC1(std);

	if (afe_std < 0)
		return afe_std;

	FUNC4(&state->mutex);

	FUNC0(state, afe_std);
	afe->curr_norm = std;

	FUNC5(&state->mutex);

	return 0;
}