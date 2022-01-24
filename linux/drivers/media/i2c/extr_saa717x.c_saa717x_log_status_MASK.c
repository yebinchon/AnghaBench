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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct saa717x_state {int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 struct saa717x_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct saa717x_state *state = FUNC0(sd);

	FUNC1(&state->hdl, sd->name);
	return 0;
}