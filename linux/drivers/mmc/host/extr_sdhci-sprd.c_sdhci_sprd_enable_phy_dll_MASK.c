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
 int SDHCI_SPRD_DLL_ALL_CPST_EN ; 
 int SDHCI_SPRD_DLL_EN ; 
 int SDHCI_SPRD_DLL_INIT_COUNT ; 
 int SDHCI_SPRD_DLL_PHASE_INTERNAL ; 
 int SDHCI_SPRD_DLL_SEARCH_MODE ; 
 int /*<<< orphan*/  SDHCI_SPRD_REG_32_DLL_CFG ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host)
{
	u32 tmp;

	tmp = FUNC0(host, SDHCI_SPRD_REG_32_DLL_CFG);
	tmp &= ~(SDHCI_SPRD_DLL_EN | SDHCI_SPRD_DLL_ALL_CPST_EN);
	FUNC1(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
	/* wait 1ms */
	FUNC2(1000, 1250);

	tmp = FUNC0(host, SDHCI_SPRD_REG_32_DLL_CFG);
	tmp |= SDHCI_SPRD_DLL_ALL_CPST_EN | SDHCI_SPRD_DLL_SEARCH_MODE |
		SDHCI_SPRD_DLL_INIT_COUNT | SDHCI_SPRD_DLL_PHASE_INTERNAL;
	FUNC1(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
	/* wait 1ms */
	FUNC2(1000, 1250);

	tmp = FUNC0(host, SDHCI_SPRD_REG_32_DLL_CFG);
	tmp |= SDHCI_SPRD_DLL_EN;
	FUNC1(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
	/* wait 1ms */
	FUNC2(1000, 1250);
}