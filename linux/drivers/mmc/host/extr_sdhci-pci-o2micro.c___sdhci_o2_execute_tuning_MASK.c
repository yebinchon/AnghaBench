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
typedef  int u16 ;
struct sdhci_host {int tuning_done; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_SEND_TUNING_BLOCK_HS200 ; 
 int SDHCI_CTRL_EXEC_TUNING ; 
 int SDHCI_CTRL_TUNED_CLK ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host, u32 opcode)
{
	int i;

	FUNC6(host, MMC_SEND_TUNING_BLOCK_HS200);

	for (i = 0; i < 150; i++) {
		u16 ctrl = FUNC4(host, SDHCI_HOST_CONTROL2);

		if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
			if (ctrl & SDHCI_CTRL_TUNED_CLK) {
				host->tuning_done = true;
				return;
			}
			FUNC3("%s: HW tuning failed !\n",
				FUNC1(host->mmc));
			break;
		}

		FUNC0(1);
	}

	FUNC2("%s: Tuning failed, falling back to fixed sampling clock\n",
		FUNC1(host->mmc));
	FUNC5(host);
}