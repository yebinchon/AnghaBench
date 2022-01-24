#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_tuner {scalar_t__ index; int signal; int /*<<< orphan*/  audmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  capability; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct v4l2_frequency_band {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  capability; int /*<<< orphan*/  member_0; } ;
struct snd_tea575x {int val; scalar_t__ tuned; scalar_t__ stereo; scalar_t__ has_am; } ;
struct TYPE_2__ {int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 size_t BAND_AM ; 
 int EINVAL ; 
 int TEA575X_BIT_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 TYPE_1__* bands ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_tuner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tea575x*,struct v4l2_frequency_band*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4(struct snd_tea575x *tea, struct v4l2_tuner *v)
{
	struct v4l2_frequency_band band_fm = { 0, };

	if (v->index > 0)
		return -EINVAL;

	FUNC2(tea);
	FUNC1(tea, &band_fm);

	FUNC0(v, 0, sizeof(*v));
	FUNC3(v->name, tea->has_am ? "FM/AM" : "FM", sizeof(v->name));
	v->type = V4L2_TUNER_RADIO;
	v->capability = band_fm.capability;
	v->rangelow = tea->has_am ? bands[BAND_AM].rangelow : band_fm.rangelow;
	v->rangehigh = band_fm.rangehigh;
	v->rxsubchans = tea->stereo ? V4L2_TUNER_SUB_STEREO : V4L2_TUNER_SUB_MONO;
	v->audmode = (tea->val & TEA575X_BIT_MONO) ?
		V4L2_TUNER_MODE_MONO : V4L2_TUNER_MODE_STEREO;
	v->signal = tea->tuned ? 0xffff : 0;
	return 0;
}