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
struct TYPE_2__ {scalar_t__ raw_bkops_status; int /*<<< orphan*/  man_bkops_en; } ;
struct mmc_card {int /*<<< orphan*/  host; TYPE_1__ ext_csd; } ;

/* Variables and functions */
 scalar_t__ EXT_CSD_BKOPS_LEVEL_2 ; 
 int /*<<< orphan*/  EXT_CSD_BKOPS_START ; 
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
 int /*<<< orphan*/  MMC_OPS_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct mmc_card *card)
{
	int err;

	if (!card->ext_csd.man_bkops_en)
		return;

	err = FUNC1(card);
	if (err) {
		FUNC5("%s: Failed to read bkops status: %d\n",
		       FUNC0(card->host), err);
		return;
	}

	if (!card->ext_csd.raw_bkops_status ||
	    card->ext_csd.raw_bkops_status < EXT_CSD_BKOPS_LEVEL_2)
		return;

	FUNC2(card->host);

	/*
	 * For urgent BKOPS status, LEVEL_2 and higher, let's execute
	 * synchronously. Future wise, we may consider to start BKOPS, for less
	 * urgent levels by using an asynchronous background task, when idle.
	 */
	err = FUNC4(card, EXT_CSD_CMD_SET_NORMAL,
			EXT_CSD_BKOPS_START, 1, MMC_OPS_TIMEOUT_MS);
	if (err)
		FUNC6("%s: Error %d starting bkops\n",
			FUNC0(card->host), err);

	FUNC3(card->host);
}