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
typedef  int u16 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {int dummy; } ;
struct cx88_audio_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_AUDIO_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 struct cx88_audio_dev* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *value)
{
	struct cx88_audio_dev *chip = FUNC0(kcontrol);
	struct cx88_core *core = chip->core;
	u16 left = value->value.integer.value[0];
	u16 right = value->value.integer.value[1];
	int v, b;

	/* Pass volume & balance onto any WM8775 */
	if (left >= right) {
		v = left << 10;
		b = left ? (0x8000 * right) / left : 0x8000;
	} else {
		v = right << 10;
		b = right ? 0xffff - (0x8000 * left) / right : 0x8000;
	}
	FUNC1(core, V4L2_CID_AUDIO_VOLUME, v);
	FUNC1(core, V4L2_CID_AUDIO_BALANCE, b);
}