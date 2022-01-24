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
typedef  int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {scalar_t__ sd_wm8775; } ;
struct cx88_audio_dev {int /*<<< orphan*/  reg_lock; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_BAL_CTL ; 
 int /*<<< orphan*/  AUD_VOL_CTL ; 
 int /*<<< orphan*/  SHADOW_AUD_VOL_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct cx88_audio_dev* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *value)
{
	struct cx88_audio_dev *chip = FUNC4(kcontrol);
	struct cx88_core *core = chip->core;
	int left, right, v, b;
	int changed = 0;
	u32 old;

	if (core->sd_wm8775)
		FUNC3(kcontrol, value);

	left = value->value.integer.value[0] & 0x3f;
	right = value->value.integer.value[1] & 0x3f;
	b = right - left;
	if (b < 0) {
		v = 0x3f - left;
		b = (-b) | 0x40;
	} else {
		v = 0x3f - right;
	}
	/* Do we really know this will always be called with IRQs on? */
	FUNC5(&chip->reg_lock);
	old = FUNC0(AUD_VOL_CTL);
	if (v != (old & 0x3f)) {
		FUNC1(SHADOW_AUD_VOL_CTL, AUD_VOL_CTL, (old & ~0x3f) | v);
		changed = 1;
	}
	if ((FUNC0(AUD_BAL_CTL) & 0x7f) != b) {
		FUNC2(AUD_BAL_CTL, b);
		changed = 1;
	}
	FUNC6(&chip->reg_lock);

	return changed;
}