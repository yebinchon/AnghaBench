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
struct cx18_av_state {scalar_t__ aud_input; } ;
struct cx18 {struct cx18_av_state av_state; } ;

/* Variables and functions */
 scalar_t__ CX18_AV_AUDIO_SERIAL2 ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int,int,int) ; 
 int FUNC1 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct cx18 *cx, int mute)
{
	struct cx18_av_state *state = &cx->av_state;
	u8 v;

	if (state->aud_input > CX18_AV_AUDIO_SERIAL2) {
		/* Must turn off microcontroller in order to mute sound.
		 * Not sure if this is the best method, but it does work.
		 * If the microcontroller is running, then it will undo any
		 * changes to the mute register. */
		v = FUNC1(cx, 0x803);
		if (mute) {
			/* disable microcontroller */
			v &= ~0x10;
			FUNC3(cx, 0x803, v, v, 0x1f);
			FUNC2(cx, 0x8d3, 0x1f);
		} else {
			/* enable microcontroller */
			v |= 0x10;
			FUNC3(cx, 0x803, v, v, 0x1f);
		}
	} else {
		/* SRC1_MUTE_EN */
		FUNC0(cx, 0x8d3, ~0x2, mute ? 0x02 : 0x00);
	}
}