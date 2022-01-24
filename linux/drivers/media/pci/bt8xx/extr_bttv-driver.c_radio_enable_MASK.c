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
struct bttv {int has_radio_tuner; int /*<<< orphan*/  audio_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVAUDIO_INPUT_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static void FUNC2(struct bttv *btv)
{
	/* Switch to the radio tuner */
	if (!btv->has_radio_tuner) {
		btv->has_radio_tuner = 1;
		FUNC1(btv, tuner, s_radio);
		btv->audio_input = TVAUDIO_INPUT_RADIO;
		FUNC0(btv, btv->audio_input);
	}
}