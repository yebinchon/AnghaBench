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
struct msb_data {int /*<<< orphan*/  q_lock; struct memstick_dev* card; } ;
struct memstick_dev {int /*<<< orphan*/  start; int /*<<< orphan*/  stop; int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct msb_data*) ; 
 struct msb_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct memstick_dev*,struct msb_data*) ; 
 int /*<<< orphan*/  msb_check_card ; 
 int /*<<< orphan*/  FUNC3 (struct msb_data*) ; 
 int FUNC4 (struct memstick_dev*) ; 
 int FUNC5 (struct memstick_dev*) ; 
 int /*<<< orphan*/  msb_start ; 
 int /*<<< orphan*/  msb_stop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct memstick_dev *card)
{
	struct msb_data *msb;
	int rc = 0;

	msb = FUNC1(sizeof(struct msb_data), GFP_KERNEL);
	if (!msb)
		return -ENOMEM;
	FUNC2(card, msb);
	msb->card = card;
	FUNC6(&msb->q_lock);

	rc = FUNC4(card);
	if (rc)
		goto out_free;

	rc = FUNC5(card);
	if (!rc) {
		card->check = msb_check_card;
		card->stop = msb_stop;
		card->start = msb_start;
		return 0;
	}
out_free:
	FUNC2(card, NULL);
	FUNC3(msb);
	FUNC0(msb);
	return rc;
}