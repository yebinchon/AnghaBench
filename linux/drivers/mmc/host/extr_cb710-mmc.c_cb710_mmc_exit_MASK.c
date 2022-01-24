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
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int /*<<< orphan*/  finish_req_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_CONFIGB_PORT ; 
 int /*<<< orphan*/  CB710_MMC_CONFIG_PORT ; 
 int /*<<< orphan*/  CB710_MMC_IE_CARD_INSERTION_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cb710_slot* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ *) ; 
 struct mmc_host* FUNC3 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct cb710_mmc_reader* FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct cb710_slot *slot = FUNC1(pdev);
	struct mmc_host *mmc = FUNC3(slot);
	struct cb710_mmc_reader *reader = FUNC7(mmc);

	FUNC0(slot, 0, CB710_MMC_IE_CARD_INSERTION_STATUS);

	FUNC8(mmc);

	/* IRQs should be disabled now, but let's stay on the safe side */
	FUNC0(slot, 0, ~0);
	FUNC2(slot, NULL);

	/* clear config ports - just in case */
	FUNC5(slot, CB710_MMC_CONFIG_PORT, 0);
	FUNC4(slot, CB710_MMC_CONFIGB_PORT, 0);

	FUNC9(&reader->finish_req_tasklet);

	FUNC6(mmc);
	return 0;
}