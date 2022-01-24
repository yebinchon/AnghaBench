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
struct v4l2_sliced_vbi_data {int line; scalar_t__ field; int* data; } ;
struct saa7127_state {int vps_enable; int* vps_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 struct saa7127_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, const struct v4l2_sliced_vbi_data *data)
{
	struct saa7127_state *state = FUNC1(sd);
	int enable = (data->line != 0);

	if (enable && (data->field != 0 || data->line != 16))
		return -EINVAL;
	if (state->vps_enable != enable) {
		FUNC2(1, debug, sd, "Turn VPS Signal %s\n", enable ? "on" : "off");
		FUNC0(sd, 0x54, enable << 7);
		state->vps_enable = enable;
	}
	if (!enable)
		return 0;

	state->vps_data[0] = data->data[2];
	state->vps_data[1] = data->data[8];
	state->vps_data[2] = data->data[9];
	state->vps_data[3] = data->data[10];
	state->vps_data[4] = data->data[11];
	FUNC2(1, debug, sd, "Set VPS data %*ph\n", 5, state->vps_data);
	FUNC0(sd, 0x55, state->vps_data[0]);
	FUNC0(sd, 0x56, state->vps_data[1]);
	FUNC0(sd, 0x57, state->vps_data[2]);
	FUNC0(sd, 0x58, state->vps_data[3]);
	FUNC0(sd, 0x59, state->vps_data[4]);
	return 0;
}