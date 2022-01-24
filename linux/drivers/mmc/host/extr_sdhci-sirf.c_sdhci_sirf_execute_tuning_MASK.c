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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SDHCI_CLK_DELAY_SETTING ; 
 int SIRF_TUNING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sdhci_host *host, u32 opcode)
{
	int tuning_seq_cnt = 3;
	int phase;
	u8 tuned_phase_cnt = 0;
	int rc = 0, longest_range = 0;
	int start = -1, end = 0, tuning_value = -1, range = 0;
	u16 clock_setting;
	struct mmc_host *mmc = host->mmc;

	clock_setting = FUNC4(host, SDHCI_CLK_DELAY_SETTING);
	clock_setting &= ~0x3fff;

retry:
	phase = 0;
	tuned_phase_cnt = 0;
	do {
		FUNC5(host,
			clock_setting | phase,
			SDHCI_CLK_DELAY_SETTING);

		if (!FUNC3(mmc, opcode, NULL)) {
			/* Tuning is successful at this tuning point */
			tuned_phase_cnt++;
			FUNC0(FUNC1(mmc), "%s: Found good phase = %d\n",
				 FUNC2(mmc), phase);
			if (start == -1)
				start = phase;
			end = phase;
			range++;
			if (phase == (SIRF_TUNING_COUNT - 1)
				&& range > longest_range)
				tuning_value = (start + end) / 2;
		} else {
			FUNC0(FUNC1(mmc), "%s: Found bad phase = %d\n",
				 FUNC2(mmc), phase);
			if (range > longest_range) {
				tuning_value = (start + end) / 2;
				longest_range = range;
			}
			start = -1;
			end = range = 0;
		}
	} while (++phase < SIRF_TUNING_COUNT);

	if (tuned_phase_cnt && tuning_value > 0) {
		/*
		 * Finally set the selected phase in delay
		 * line hw block.
		 */
		phase = tuning_value;
		FUNC5(host,
			clock_setting | phase,
			SDHCI_CLK_DELAY_SETTING);

		FUNC0(FUNC1(mmc), "%s: Setting the tuning phase to %d\n",
			 FUNC2(mmc), phase);
	} else {
		if (--tuning_seq_cnt)
			goto retry;
		/* Tuning failed */
		FUNC0(FUNC1(mmc), "%s: No tuning point found\n",
		       FUNC2(mmc));
		rc = -EIO;
	}

	return rc;
}