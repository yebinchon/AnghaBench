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
struct sdhci_cdns_priv {scalar_t__ hrs_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SDHCI_CDNS_HRS06 ; 
 int /*<<< orphan*/  SDHCI_CDNS_HRS06_MODE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sdhci_cdns_priv *priv, u32 mode)
{
	u32 tmp;

	/* The speed mode for eMMC is selected by HRS06 register */
	tmp = FUNC1(priv->hrs_addr + SDHCI_CDNS_HRS06);
	tmp &= ~SDHCI_CDNS_HRS06_MODE;
	tmp |= FUNC0(SDHCI_CDNS_HRS06_MODE, mode);
	FUNC2(tmp, priv->hrs_addr + SDHCI_CDNS_HRS06);
}