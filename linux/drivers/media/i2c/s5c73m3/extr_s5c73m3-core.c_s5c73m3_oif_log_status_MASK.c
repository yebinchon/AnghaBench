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
struct v4l2_subdev {int /*<<< orphan*/  name; int /*<<< orphan*/  ctrl_handler; } ;
struct s5c73m3 {int /*<<< orphan*/  apply_fmt; int /*<<< orphan*/  power; } ;

/* Variables and functions */
 struct s5c73m3* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct s5c73m3 *state = FUNC0(sd);

	FUNC1(sd->ctrl_handler, sd->name);

	FUNC2(sd, "power: %d, apply_fmt: %d\n", state->power,
							state->apply_fmt);

	return 0;
}