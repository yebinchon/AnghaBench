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
typedef  int u32 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct sdhci_host *host, bool enable)
{
	bool status;
	u32 reg;

	reg = FUNC0(host, SDHCI_CLOCK_CONTROL);
	status = !!(reg & SDHCI_CLOCK_CARD_EN);

	if (status == enable)
		return status;

	if (enable)
		reg |= SDHCI_CLOCK_CARD_EN;
	else
		reg &= ~SDHCI_CLOCK_CARD_EN;

	FUNC1(host, reg, SDHCI_CLOCK_CONTROL);

	return status;
}