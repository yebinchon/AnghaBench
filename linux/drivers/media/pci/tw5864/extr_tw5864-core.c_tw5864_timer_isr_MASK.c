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
struct tw5864_input {int nr; int buf_id; int /*<<< orphan*/  slock; int /*<<< orphan*/  new_frame_deadline; int /*<<< orphan*/  enabled; } ;
struct tw5864_dev {int encoder_busy; int next_input; int /*<<< orphan*/  slock; struct tw5864_input* inputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  TW5864_ENC_BUF_PTR_REC1 ; 
 int TW5864_INPUTS ; 
 int /*<<< orphan*/  TW5864_PCI_INTR_STATUS ; 
 int /*<<< orphan*/  TW5864_SENIF_ORG_FRM_PTR1 ; 
 int /*<<< orphan*/  TW5864_TIMER_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tw5864_input*) ; 
 int /*<<< orphan*/  FUNC4 (struct tw5864_input*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tw5864_dev *dev)
{
	unsigned long flags;
	int i;
	int encoder_busy;

	/* Additional ack for this interrupt */
	FUNC7(TW5864_PCI_INTR_STATUS, TW5864_TIMER_INTR);

	FUNC0(&dev->slock, flags);
	encoder_busy = dev->encoder_busy;
	FUNC1(&dev->slock, flags);

	if (encoder_busy)
		return;

	/*
	 * Traversing inputs in round-robin fashion, starting from next to the
	 * last processed one
	 */
	for (i = 0; i < TW5864_INPUTS; i++) {
		int next_input = (i + dev->next_input) % TW5864_INPUTS;
		struct tw5864_input *input = &dev->inputs[next_input];
		int raw_buf_id; /* id of internal buf with last raw frame */

		FUNC0(&input->slock, flags);
		if (!input->enabled)
			goto next;

		/* Check if new raw frame is available */
		raw_buf_id = FUNC5(TW5864_SENIF_ORG_FRM_PTR1, 0x3,
						 2 * input->nr);

		if (input->buf_id != raw_buf_id) {
			input->buf_id = raw_buf_id;
			FUNC3(input);
			FUNC1(&input->slock, flags);

			FUNC0(&dev->slock, flags);
			dev->encoder_busy = 1;
			dev->next_input = (next_input + 1) % TW5864_INPUTS;
			FUNC1(&dev->slock, flags);

			FUNC4(input);
			break;
		}

		/* No new raw frame; check if channel is stuck */
		if (FUNC2(input->new_frame_deadline)) {
			/* If stuck, request new raw frames again */
			FUNC6(TW5864_ENC_BUF_PTR_REC1, 0x3,
					     2 * input->nr, input->buf_id + 3);
			FUNC3(input);
		}
next:
		FUNC1(&input->slock, flags);
	}
}