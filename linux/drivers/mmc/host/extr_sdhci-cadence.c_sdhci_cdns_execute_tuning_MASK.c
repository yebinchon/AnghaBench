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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {scalar_t__ timing; int /*<<< orphan*/  mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  MMC_SEND_TUNING_BLOCK_HS200 ; 
 scalar_t__ MMC_TIMING_MMC_HS200 ; 
 int SDHCI_CDNS_MAX_TUNING_LOOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sdhci_host*,int) ; 
 int FUNC6 (struct mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mmc_host *mmc, u32 opcode)
{
	struct sdhci_host *host = FUNC3(mmc);
	int cur_streak = 0;
	int max_streak = 0;
	int end_of_streak = 0;
	int i;

	/*
	 * This handler only implements the eMMC tuning that is specific to
	 * this controller.  Fall back to the standard method for SD timing.
	 */
	if (host->timing != MMC_TIMING_MMC_HS200)
		return FUNC6(mmc, opcode);

	if (FUNC0(opcode != MMC_SEND_TUNING_BLOCK_HS200))
		return -EINVAL;

	for (i = 0; i < SDHCI_CDNS_MAX_TUNING_LOOP; i++) {
		if (FUNC5(host, i) ||
		    FUNC4(host->mmc, opcode, NULL)) { /* bad */
			cur_streak = 0;
		} else { /* good */
			cur_streak++;
			if (cur_streak > max_streak) {
				max_streak = cur_streak;
				end_of_streak = i;
			}
		}
	}

	if (!max_streak) {
		FUNC1(FUNC2(host->mmc), "no tuning point found\n");
		return -EIO;
	}

	return FUNC5(host, end_of_streak - max_streak / 2);
}