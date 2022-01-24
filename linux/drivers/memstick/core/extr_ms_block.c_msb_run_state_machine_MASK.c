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
struct msb_data {int state; int int_polling; int exit_error; struct memstick_dev* card; } ;
struct memstick_dev {int (* next_request ) (struct memstick_dev*,struct memstick_request**) ;int /*<<< orphan*/  mrq_complete; int /*<<< orphan*/  host; int /*<<< orphan*/  current_mrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct msb_data *msb, int   (*state_func)
		(struct memstick_dev *card, struct memstick_request **req))
{
	struct memstick_dev *card = msb->card;

	FUNC0(msb->state != -1);
	msb->int_polling = false;
	msb->state = 0;
	msb->exit_error = 0;

	FUNC1(&card->current_mrq, 0, sizeof(card->current_mrq));

	card->next_request = state_func;
	FUNC2(card->host);
	FUNC3(&card->mrq_complete);

	FUNC0(msb->state != -1);
	return msb->exit_error;
}