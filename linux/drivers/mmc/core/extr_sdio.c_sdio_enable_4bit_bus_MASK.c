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
struct TYPE_3__ {int bus_widths; } ;
struct mmc_card {scalar_t__ type; TYPE_2__* host; TYPE_1__ scr; } ;
struct TYPE_4__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_BUS_WIDTH_1 ; 
 int /*<<< orphan*/  MMC_BUS_WIDTH_4 ; 
 int MMC_CAP_4_BIT_DATA ; 
 scalar_t__ MMC_TYPE_SDIO ; 
 int SD_SCR_BUS_WIDTH_4 ; 
 int FUNC0 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_card*) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card)
{
	int err;

	if (card->type == MMC_TYPE_SDIO)
		err = FUNC2(card);
	else if ((card->host->caps & MMC_CAP_4_BIT_DATA) &&
		 (card->scr.bus_widths & SD_SCR_BUS_WIDTH_4)) {
		err = FUNC0(card, MMC_BUS_WIDTH_4);
		if (err)
			return err;
		err = FUNC2(card);
		if (err <= 0)
			FUNC0(card, MMC_BUS_WIDTH_1);
	} else
		return 0;

	if (err > 0) {
		FUNC1(card->host, MMC_BUS_WIDTH_4);
		err = 0;
	}

	return err;
}