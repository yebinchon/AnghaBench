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
typedef  struct v4l2_frequency {scalar_t__ type; int /*<<< orphan*/  frequency; } const v4l2_frequency ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;
struct bttv {int /*<<< orphan*/  tv_freq; TYPE_1__ tea; int /*<<< orphan*/  radio_freq; scalar_t__ has_tea575x; } ;

/* Variables and functions */
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static void FUNC3(struct bttv *btv, const struct v4l2_frequency *f)
{
	struct v4l2_frequency new_freq = *f;

	FUNC0(btv, tuner, s_frequency, f);
	/* s_frequency may clamp the frequency, so get the actual
	   frequency before assigning radio/tv_freq. */
	FUNC0(btv, tuner, g_frequency, &new_freq);
	if (new_freq.type == V4L2_TUNER_RADIO) {
		FUNC1(btv);
		btv->radio_freq = new_freq.frequency;
		if (btv->has_tea575x) {
			btv->tea.freq = btv->radio_freq;
			FUNC2(&btv->tea);
		}
	} else {
		btv->tv_freq = new_freq.frequency;
	}
}