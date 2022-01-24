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
struct v4l2_edid {int pad; scalar_t__ start_block; int blocks; int /*<<< orphan*/ * edid; int /*<<< orphan*/ * reserved; } ;
struct TYPE_4__ {int present; int /*<<< orphan*/  edid; } ;
struct TYPE_3__ {int present; int /*<<< orphan*/  edid; } ;
struct adv7842_state {TYPE_2__ hdmi_edid; TYPE_1__ vga_edid; int /*<<< orphan*/  aspect_ratio; } ;

/* Variables and functions */
#define  ADV7842_EDID_PORT_A 130 
#define  ADV7842_EDID_PORT_B 129 
#define  ADV7842_EDID_PORT_VGA 128 
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,int) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adv7842_state* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,char*,int,int) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, struct v4l2_edid *e)
{
	struct adv7842_state *state = FUNC5(sd);
	int err = 0;

	FUNC4(e->reserved, 0, sizeof(e->reserved));

	if (e->pad > ADV7842_EDID_PORT_VGA)
		return -EINVAL;
	if (e->start_block != 0)
		return -EINVAL;
	if (e->blocks > 2) {
		e->blocks = 2;
		return -E2BIG;
	}

	/* todo, per edid */
	state->aspect_ratio = FUNC6(e->edid[0x15],
			e->edid[0x16]);

	switch (e->pad) {
	case ADV7842_EDID_PORT_VGA:
		FUNC4(&state->vga_edid.edid, 0, 256);
		state->vga_edid.present = e->blocks ? 0x1 : 0x0;
		FUNC3(&state->vga_edid.edid, e->edid, 128 * e->blocks);
		err = FUNC2(sd);
		break;
	case ADV7842_EDID_PORT_A:
	case ADV7842_EDID_PORT_B:
		FUNC4(&state->hdmi_edid.edid, 0, 256);
		if (e->blocks) {
			state->hdmi_edid.present |= 0x04 << e->pad;
		} else {
			state->hdmi_edid.present &= ~(0x04 << e->pad);
			FUNC0(sd);
		}
		FUNC3(&state->hdmi_edid.edid, e->edid, 128 * e->blocks);
		err = FUNC1(sd, e->pad);
		break;
	default:
		return -EINVAL;
	}
	if (err < 0)
		FUNC7(sd, "error %d writing edid on port %d\n", err, e->pad);
	return err;
}