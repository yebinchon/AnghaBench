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
typedef  int /*<<< orphan*/  u8 ;
struct sdhci_host {int quirks2; int ier; TYPE_1__* ops; } ;
struct mmc_command {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_timeout ) (struct sdhci_host*,struct mmc_command*) ;} ;

/* Variables and functions */
 int SDHCI_INT_DATA_TIMEOUT ; 
 int SDHCI_QUIRK2_DISABLE_HW_TIMEOUT ; 
 int /*<<< orphan*/  SDHCI_TIMEOUT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,struct mmc_command*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,struct mmc_command*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, struct mmc_command *cmd)
{
	u8 count;

	if (host->ops->set_timeout) {
		host->ops->set_timeout(host, cmd);
	} else {
		bool too_big = false;

		count = FUNC1(host, cmd, &too_big);

		if (too_big &&
		    host->quirks2 & SDHCI_QUIRK2_DISABLE_HW_TIMEOUT) {
			FUNC0(host, cmd);
			FUNC2(host, false);
		} else if (!(host->ier & SDHCI_INT_DATA_TIMEOUT)) {
			FUNC2(host, true);
		}

		FUNC3(host, count, SDHCI_TIMEOUT_CONTROL);
	}
}