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
struct s2250 {scalar_t__ std; int input; int audio_input; } ;

/* Variables and functions */
 scalar_t__ V4L2_STD_NTSC ; 
 scalar_t__ V4L2_STD_PAL ; 
 scalar_t__ V4L2_STD_SECAM ; 
 struct s2250* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct s2250 *state = FUNC0(sd);

	FUNC2(sd, "Standard: %s\n", state->std == V4L2_STD_NTSC ? "NTSC" :
					state->std == V4L2_STD_PAL ? "PAL" :
					state->std == V4L2_STD_SECAM ? "SECAM" :
					"unknown");
	FUNC2(sd, "Input: %s\n", state->input == 0 ? "Composite" :
					state->input == 1 ? "S-video" :
					"error");
	FUNC2(sd, "Audio input: %s\n", state->audio_input == 0 ? "Line In" :
					state->audio_input == 1 ? "Mic" :
					state->audio_input == 2 ? "Mic Boost" :
					"error");
	return FUNC1(sd);
}