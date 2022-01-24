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
struct sdhci_host {int dummy; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_ARASAN_VENDOR_REGISTER ; 
 int /*<<< orphan*/  VENDOR_ENHANCED_STROBE ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc,
					struct mmc_ios *ios)
{
	u32 vendor;
	struct sdhci_host *host = FUNC0(mmc);

	vendor = FUNC1(host, SDHCI_ARASAN_VENDOR_REGISTER);
	if (ios->enhanced_strobe)
		vendor |= VENDOR_ENHANCED_STROBE;
	else
		vendor &= ~VENDOR_ENHANCED_STROBE;

	FUNC2(host, vendor, SDHCI_ARASAN_VENDOR_REGISTER);
}