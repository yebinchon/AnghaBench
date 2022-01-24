#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct ad9389b_state {TYPE_2__ dv_timings; } ;

/* Variables and functions */
 int V4L2_DV_FL_IS_CE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int,int) ; 
 struct ad9389b_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd)
{
	struct ad9389b_state *state = FUNC1(sd);

	if (state->dv_timings.bt.flags & V4L2_DV_FL_IS_CE_VIDEO) {
		/* CE format, not IT  */
		FUNC0(sd, 0xcd, 0xbf, 0x00);
	} else {
		/* IT format */
		FUNC0(sd, 0xcd, 0xbf, 0x40);
	}
}