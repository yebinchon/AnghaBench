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
struct mmc_card {int mmc_avail_type; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EXT_CSD_CARD_TYPE_HS ; 
 int EXT_CSD_CARD_TYPE_HS200 ; 
 int EXT_CSD_CARD_TYPE_HS400ES ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_card*) ; 
 int FUNC1 (struct mmc_card*) ; 
 int FUNC2 (struct mmc_card*) ; 
 int FUNC3 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*) ; 

__attribute__((used)) static int FUNC5(struct mmc_card *card)
{
	int err = 0;

	if (!FUNC0(card))
		goto bus_speed;

	if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400ES)
		err = FUNC3(card);
	else if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS200)
		err = FUNC2(card);
	else if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS)
		err = FUNC1(card);

	if (err && err != -EBADMSG)
		return err;

bus_speed:
	/*
	 * Set the bus speed to the selected bus timing.
	 * If timing is not selected, backward compatible is the default.
	 */
	FUNC4(card);
	return 0;
}