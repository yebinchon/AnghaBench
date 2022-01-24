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
typedef  int u32 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {TYPE_1__* slot; struct dw_mci_exynos_priv_data* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKSEL ; 
 int /*<<< orphan*/  CLKSEL64 ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS7 ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ; 
 int /*<<< orphan*/  DW_MMC_CARD_NO_USE_HOLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SDMMC_CLKSEL_TIMING_MASK ; 
 int FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dw_mci *host, u32 timing)
{
	struct dw_mci_exynos_priv_data *priv = host->priv;
	u32 clksel;

	if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
		clksel = FUNC1(host, CLKSEL64);
	else
		clksel = FUNC1(host, CLKSEL);

	clksel = (clksel & ~SDMMC_CLKSEL_TIMING_MASK) | timing;

	if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
		FUNC2(host, CLKSEL64, clksel);
	else
		FUNC2(host, CLKSEL, clksel);

	/*
	 * Exynos4412 and Exynos5250 extends the use of CMD register with the
	 * use of bit 29 (which is reserved on standard MSHC controllers) for
	 * optionally bypassing the HOLD register for command and data. The
	 * HOLD register should be bypassed in case there is no phase shift
	 * applied on CMD/DATA that is sent to the card.
	 */
	if (!FUNC0(clksel) && host->slot)
		FUNC3(DW_MMC_CARD_NO_USE_HOLD, &host->slot->flags);
}