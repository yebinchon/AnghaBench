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
typedef  int u8 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_arasan_data {int quirks; } ;

/* Variables and functions */
 int SDHCI_ARASAN_QUIRK_FORCE_CDTEST ; 
 int SDHCI_CTRL_CDTEST_EN ; 
 int SDHCI_CTRL_CDTEST_INS ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 struct sdhci_arasan_data* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, u8 mask)
{
	u8 ctrl;
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC0(pltfm_host);

	FUNC3(host, mask);

	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_FORCE_CDTEST) {
		ctrl = FUNC2(host, SDHCI_HOST_CONTROL);
		ctrl |= SDHCI_CTRL_CDTEST_INS | SDHCI_CTRL_CDTEST_EN;
		FUNC4(host, ctrl, SDHCI_HOST_CONTROL);
	}
}