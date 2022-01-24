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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  ier; } ;
struct sdhci_esdhc {scalar_t__ quirk_unreliable_pulse_detection; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESDHC_DLLCFG1 ; 
 int /*<<< orphan*/  ESDHC_DLL_PD_PULSE_STRETCH_SEL ; 
 int /*<<< orphan*/  ESDHC_TBCTL ; 
 int /*<<< orphan*/  ESDHC_TB_EN ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct sdhci_esdhc* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host, u8 mask)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct sdhci_esdhc *esdhc = FUNC2(pltfm_host);
	u32 val;

	FUNC5(host, mask);

	FUNC6(host, host->ier, SDHCI_INT_ENABLE);
	FUNC6(host, host->ier, SDHCI_SIGNAL_ENABLE);

	if (FUNC1(NULL, NULL, "fsl,p2020-esdhc"))
		FUNC0(5);

	if (mask & SDHCI_RESET_ALL) {
		val = FUNC4(host, ESDHC_TBCTL);
		val &= ~ESDHC_TB_EN;
		FUNC6(host, val, ESDHC_TBCTL);

		if (esdhc->quirk_unreliable_pulse_detection) {
			val = FUNC4(host, ESDHC_DLLCFG1);
			val &= ~ESDHC_DLL_PD_PULSE_STRETCH_SEL;
			FUNC6(host, val, ESDHC_DLLCFG1);
		}
	}
}