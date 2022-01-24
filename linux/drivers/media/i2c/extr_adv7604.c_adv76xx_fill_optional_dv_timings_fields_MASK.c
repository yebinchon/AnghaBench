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
struct v4l2_dv_timings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  adv76xx_check_dv_timings ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_dv_timings*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd,
		struct v4l2_dv_timings *timings)
{
	FUNC2(timings, FUNC0(sd, -1),
				 FUNC1(sd) ? 250000 : 1000000,
				 adv76xx_check_dv_timings, NULL);
}