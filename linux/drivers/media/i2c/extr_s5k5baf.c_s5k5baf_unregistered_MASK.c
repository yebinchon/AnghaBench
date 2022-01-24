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
struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int /*<<< orphan*/  cis_sd; } ;

/* Variables and functions */
 struct s5k5baf* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd)
{
	struct s5k5baf *state = FUNC0(sd);
	FUNC1(&state->cis_sd);
}