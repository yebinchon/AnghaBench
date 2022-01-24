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
struct sdhci_host {int flags; int quirks; int /*<<< orphan*/  mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_CARD_PRESENT ; 
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mmc_host*) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC2(mmc);
	int gpio_cd = FUNC1(mmc);

	if (host->flags & SDHCI_DEVICE_DEAD)
		return 0;

	/* If nonremovable, assume that the card is always present. */
	if (!FUNC0(host->mmc))
		return 1;

	/*
	 * Try slot gpio detect, if defined it take precedence
	 * over build in controller functionality
	 */
	if (gpio_cd >= 0)
		return !!gpio_cd;

	/* If polling, assume that the card is always present. */
	if (host->quirks & SDHCI_QUIRK_BROKEN_CARD_DETECTION)
		return 1;

	/* Host native card detect */
	return !!(FUNC3(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
}