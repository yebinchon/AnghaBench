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
struct sdhci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int ESDHC_TUNE_CTRL_MAX ; 
 int ESDHC_TUNE_CTRL_MIN ; 
 int ESDHC_TUNE_CTRL_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sdhci_host *host, u32 opcode)
{
	int min, max, avg, ret;

	/* find the mininum delay first which can pass tuning */
	min = ESDHC_TUNE_CTRL_MIN;
	while (min < ESDHC_TUNE_CTRL_MAX) {
		FUNC2(host, min);
		if (!FUNC4(host->mmc, opcode, NULL))
			break;
		min += ESDHC_TUNE_CTRL_STEP;
	}

	/* find the maxinum delay which can not pass tuning */
	max = min + ESDHC_TUNE_CTRL_STEP;
	while (max < ESDHC_TUNE_CTRL_MAX) {
		FUNC2(host, max);
		if (FUNC4(host->mmc, opcode, NULL)) {
			max -= ESDHC_TUNE_CTRL_STEP;
			break;
		}
		max += ESDHC_TUNE_CTRL_STEP;
	}

	/* use average delay to get the best timing */
	avg = (min + max) / 2;
	FUNC2(host, avg);
	ret = FUNC4(host->mmc, opcode, NULL);
	FUNC1(host);

	FUNC0(FUNC3(host->mmc), "tuning %s at 0x%x ret %d\n",
		ret ? "failed" : "passed", avg, ret);

	return ret;
}