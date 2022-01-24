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
struct sdhci_omap_host {int dummy; } ;

/* Variables and functions */
 int DLL_CALIB ; 
 int DLL_FORCE_SR_C_MASK ; 
 int DLL_FORCE_SR_C_SHIFT ; 
 int DLL_FORCE_VALUE ; 
 int /*<<< orphan*/  SDHCI_OMAP_DLL ; 
 int FUNC0 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct sdhci_omap_host *omap_host,
				      int count)
{
	int i;
	u32 reg;

	reg = FUNC0(omap_host, SDHCI_OMAP_DLL);
	reg |= DLL_FORCE_VALUE;
	reg &= ~DLL_FORCE_SR_C_MASK;
	reg |= (count << DLL_FORCE_SR_C_SHIFT);
	FUNC1(omap_host, SDHCI_OMAP_DLL, reg);

	reg |= DLL_CALIB;
	FUNC1(omap_host, SDHCI_OMAP_DLL, reg);
	for (i = 0; i < 1000; i++) {
		reg = FUNC0(omap_host, SDHCI_OMAP_DLL);
		if (reg & DLL_CALIB)
			break;
	}
	reg &= ~DLL_CALIB;
	FUNC1(omap_host, SDHCI_OMAP_DLL, reg);
}