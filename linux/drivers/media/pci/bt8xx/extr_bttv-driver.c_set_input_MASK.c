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
struct TYPE_2__ {scalar_t__ frame_irq; } ;
struct bttv {unsigned int input; unsigned int new_input; scalar_t__ tuner_type; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  s_lock; TYPE_1__ curr; } ;

/* Variables and functions */
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  TVAUDIO_INPUT_EXTERN ; 
 int /*<<< orphan*/  TVAUDIO_INPUT_TUNER ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ) ; 
 scalar_t__ irq_iswitch ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,unsigned int) ; 

__attribute__((used)) static void
FUNC5(struct bttv *btv, unsigned int input, unsigned int norm)
{
	unsigned long flags;

	btv->input = input;
	if (irq_iswitch) {
		FUNC2(&btv->s_lock,flags);
		if (btv->curr.frame_irq) {
			/* active capture -> delayed input switch */
			btv->new_input = input;
		} else {
			FUNC4(btv,input);
		}
		FUNC3(&btv->s_lock,flags);
	} else {
		FUNC4(btv,input);
	}
	btv->audio_input = (btv->tuner_type != TUNER_ABSENT && input == 0) ?
				TVAUDIO_INPUT_TUNER : TVAUDIO_INPUT_EXTERN;
	FUNC0(btv, btv->audio_input);
	FUNC1(btv, norm);
}