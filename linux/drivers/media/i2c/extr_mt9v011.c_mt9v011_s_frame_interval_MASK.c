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
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_fract {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0A_MT9V011_CLK_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				    struct v4l2_subdev_frame_interval *ival)
{
	struct v4l2_fract *tpf = &ival->interval;
	u16 speed;

	speed = FUNC1(sd, tpf->numerator, tpf->denominator);

	FUNC2(sd, R0A_MT9V011_CLK_SPEED, speed);
	FUNC3(1, debug, sd, "Setting speed to %d\n", speed);

	/* Recalculate and update fps info */
	FUNC0(sd, &tpf->numerator, &tpf->denominator);

	return 0;
}