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
struct ef4_nic {scalar_t__ loopback_mode; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FFE_AB_XX_FORCE_SIG_ALL_LANES ; 
 int /*<<< orphan*/  FRF_AB_XX_FORCE_SIG ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKA ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKB ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKC ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKD ; 
 int /*<<< orphan*/  FRF_AB_XX_XGMII_LB_EN ; 
 int /*<<< orphan*/  FRF_AB_XX_XGXS_LB_EN ; 
 int /*<<< orphan*/  FR_AB_XX_CORE_STAT ; 
 int /*<<< orphan*/  FR_AB_XX_SD_CTL ; 
 scalar_t__ LOOPBACK_XAUI ; 
 scalar_t__ LOOPBACK_XGMII ; 
 scalar_t__ LOOPBACK_XGXS ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 

__attribute__((used)) static void FUNC5(struct ef4_nic *efx)
{
	ef4_oword_t reg;
	bool xgxs_loopback = (efx->loopback_mode == LOOPBACK_XGXS);
	bool xaui_loopback = (efx->loopback_mode == LOOPBACK_XAUI);
	bool xgmii_loopback = (efx->loopback_mode == LOOPBACK_XGMII);
	bool old_xgmii_loopback, old_xgxs_loopback, old_xaui_loopback;

	/* XGXS block is flaky and will need to be reset if moving
	 * into our out of XGMII, XGXS or XAUI loopbacks. */
	FUNC2(efx, &reg, FR_AB_XX_CORE_STAT);
	old_xgxs_loopback = FUNC0(reg, FRF_AB_XX_XGXS_LB_EN);
	old_xgmii_loopback = FUNC0(reg, FRF_AB_XX_XGMII_LB_EN);

	FUNC2(efx, &reg, FR_AB_XX_SD_CTL);
	old_xaui_loopback = FUNC0(reg, FRF_AB_XX_LPBKA);

	/* The PHY driver may have turned XAUI off */
	if ((xgxs_loopback != old_xgxs_loopback) ||
	    (xaui_loopback != old_xaui_loopback) ||
	    (xgmii_loopback != old_xgmii_loopback))
		FUNC4(efx);

	FUNC2(efx, &reg, FR_AB_XX_CORE_STAT);
	FUNC1(reg, FRF_AB_XX_FORCE_SIG,
			    (xgxs_loopback || xaui_loopback) ?
			    FFE_AB_XX_FORCE_SIG_ALL_LANES : 0);
	FUNC1(reg, FRF_AB_XX_XGXS_LB_EN, xgxs_loopback);
	FUNC1(reg, FRF_AB_XX_XGMII_LB_EN, xgmii_loopback);
	FUNC3(efx, &reg, FR_AB_XX_CORE_STAT);

	FUNC2(efx, &reg, FR_AB_XX_SD_CTL);
	FUNC1(reg, FRF_AB_XX_LPBKD, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKC, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKB, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKA, xaui_loopback);
	FUNC3(efx, &reg, FR_AB_XX_SD_CTL);
}