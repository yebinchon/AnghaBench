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
typedef  int u8 ;
struct v4l2_tuner {int signal; int capability; int rxsubchans; int /*<<< orphan*/  audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int /*<<< orphan*/  audmode; scalar_t__ radio; } ;

/* Variables and functions */
 int V4L2_TUNER_CAP_LANG1 ; 
 int V4L2_TUNER_CAP_LANG2 ; 
 int V4L2_TUNER_CAP_SAP ; 
 int V4L2_TUNER_CAP_STEREO ; 
 int V4L2_TUNER_SUB_LANG1 ; 
 int V4L2_TUNER_SUB_LANG2 ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_SAP ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int FUNC0 (struct i2c_client*,int) ; 
 scalar_t__ FUNC1 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct cx25840_state *state = FUNC2(sd);
	struct i2c_client *client = FUNC3(sd);
	u8 vpres = FUNC0(client, 0x40e) & 0x20;
	u8 mode;
	int val = 0;

	if (state->radio)
		return 0;

	vt->signal = vpres ? 0xffff : 0x0;
	if (FUNC1(state))
		return 0;

	vt->capability |= V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LANG1 |
			  V4L2_TUNER_CAP_LANG2 | V4L2_TUNER_CAP_SAP;

	mode = FUNC0(client, 0x804);

	/* get rxsubchans and audmode */
	if ((mode & 0xf) == 1)
		val |= V4L2_TUNER_SUB_STEREO;
	else
		val |= V4L2_TUNER_SUB_MONO;

	if (mode == 2 || mode == 4)
		val = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;

	if (mode & 0x10)
		val |= V4L2_TUNER_SUB_SAP;

	vt->rxsubchans = val;
	vt->audmode = state->audmode;
	return 0;
}