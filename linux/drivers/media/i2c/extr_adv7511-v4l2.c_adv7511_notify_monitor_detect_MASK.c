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
struct adv7511_state {int /*<<< orphan*/  have_monitor; } ;
struct adv7511_monitor_detect {int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_MONITOR_DETECT ; 
 struct adv7511_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd)
{
	struct adv7511_monitor_detect mdt;
	struct adv7511_state *state = FUNC0(sd);

	mdt.present = state->have_monitor;
	FUNC1(sd, ADV7511_MONITOR_DETECT, (void *)&mdt);
}