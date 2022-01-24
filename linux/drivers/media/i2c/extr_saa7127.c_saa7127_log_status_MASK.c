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
struct saa7127_state {int std; size_t output_type; size_t wss_mode; scalar_t__ cc_enable; scalar_t__ vps_enable; scalar_t__ wss_enable; scalar_t__ video_enable; scalar_t__ input_type; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 char** output_strs ; 
 struct saa7127_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,char*) ; 
 char** wss_strs ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct saa7127_state *state = FUNC0(sd);

	FUNC1(sd, "Standard: %s\n", (state->std & V4L2_STD_525_60) ? "60 Hz" : "50 Hz");
	FUNC1(sd, "Input:    %s\n", state->input_type ?  "color bars" : "normal");
	FUNC1(sd, "Output:   %s\n", state->video_enable ?
			output_strs[state->output_type] : "disabled");
	FUNC1(sd, "WSS:      %s\n", state->wss_enable ?
			wss_strs[state->wss_mode] : "disabled");
	FUNC1(sd, "VPS:      %s\n", state->vps_enable ? "enabled" : "disabled");
	FUNC1(sd, "CC:       %s\n", state->cc_enable ? "enabled" : "disabled");
	return 0;
}