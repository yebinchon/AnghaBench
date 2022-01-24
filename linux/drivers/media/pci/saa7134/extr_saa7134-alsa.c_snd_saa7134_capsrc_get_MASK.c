#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_7__ {int capture_source_addr; int /*<<< orphan*/  mixer_lock; int /*<<< orphan*/ * capture_source; } ;
typedef  TYPE_3__ snd_card_saa7134_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol * kcontrol,
				  struct snd_ctl_elem_value * ucontrol)
{
	snd_card_saa7134_t *chip = FUNC0(kcontrol);
	int addr = kcontrol->private_value;

	FUNC1(&chip->mixer_lock);
	if (chip->capture_source_addr == addr) {
		ucontrol->value.integer.value[0] = chip->capture_source[0];
		ucontrol->value.integer.value[1] = chip->capture_source[1];
	} else {
		ucontrol->value.integer.value[0] = 0;
		ucontrol->value.integer.value[1] = 0;
	}
	FUNC2(&chip->mixer_lock);

	return 0;
}