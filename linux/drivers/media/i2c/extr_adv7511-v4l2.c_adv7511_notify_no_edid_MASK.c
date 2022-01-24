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
struct adv7511_state {int /*<<< orphan*/  have_edid0_ctrl; int /*<<< orphan*/  cec_adap; } ;
struct adv7511_edid_detect {int present; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  segment; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_EDID_DETECT ; 
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adv7511_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC5(struct v4l2_subdev *sd)
{
	struct adv7511_state *state = FUNC2(sd);
	struct adv7511_edid_detect ed;

	/* We failed to read the EDID, so send an event for this. */
	ed.present = false;
	ed.segment = FUNC0(sd, 0xc4);
	ed.phys_addr = CEC_PHYS_ADDR_INVALID;
	FUNC1(state->cec_adap, ed.phys_addr, false);
	FUNC4(sd, ADV7511_EDID_DETECT, (void *)&ed);
	FUNC3(state->have_edid0_ctrl, 0x0);
}