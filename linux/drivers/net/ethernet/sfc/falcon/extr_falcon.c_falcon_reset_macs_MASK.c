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
struct falcon_nic_data {scalar_t__ stats_disable_count; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AB_RST_EM ; 
 int /*<<< orphan*/  FRF_AB_RST_XGRX ; 
 int /*<<< orphan*/  FRF_AB_RST_XGTX ; 
 int /*<<< orphan*/  FRF_AB_XM_CORE_RST ; 
 int /*<<< orphan*/  FRF_BB_TXFIFO_DRAIN_EN ; 
 int /*<<< orphan*/  FR_AB_GLB_CTL ; 
 int /*<<< orphan*/  FR_AB_MAC_CTRL ; 
 int /*<<< orphan*/  FR_AB_XM_GLB_CFG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	ef4_oword_t reg, mac_ctrl;
	int count;

	if (FUNC4(efx) < EF4_REV_FALCON_B0) {
		/* It's not safe to use GLB_CTL_REG to reset the
		 * macs, so instead use the internal MAC resets
		 */
		FUNC1(reg, FRF_AB_XM_CORE_RST, 1);
		FUNC6(efx, &reg, FR_AB_XM_GLB_CFG);

		for (count = 0; count < 10000; count++) {
			FUNC5(efx, &reg, FR_AB_XM_GLB_CFG);
			if (FUNC0(reg, FRF_AB_XM_CORE_RST) ==
			    0)
				return;
			FUNC10(10);
		}

		FUNC9(efx, hw, efx->net_dev,
			  "timed out waiting for XMAC core reset\n");
	}

	/* Mac stats will fail whist the TX fifo is draining */
	FUNC3(nic_data->stats_disable_count == 0);

	FUNC5(efx, &mac_ctrl, FR_AB_MAC_CTRL);
	FUNC2(mac_ctrl, FRF_BB_TXFIFO_DRAIN_EN, 1);
	FUNC6(efx, &mac_ctrl, FR_AB_MAC_CTRL);

	FUNC5(efx, &reg, FR_AB_GLB_CTL);
	FUNC2(reg, FRF_AB_RST_XGTX, 1);
	FUNC2(reg, FRF_AB_RST_XGRX, 1);
	FUNC2(reg, FRF_AB_RST_EM, 1);
	FUNC6(efx, &reg, FR_AB_GLB_CTL);

	count = 0;
	while (1) {
		FUNC5(efx, &reg, FR_AB_GLB_CTL);
		if (!FUNC0(reg, FRF_AB_RST_XGTX) &&
		    !FUNC0(reg, FRF_AB_RST_XGRX) &&
		    !FUNC0(reg, FRF_AB_RST_EM)) {
			FUNC8(efx, hw, efx->net_dev,
				  "Completed MAC reset after %d loops\n",
				  count);
			break;
		}
		if (count > 20) {
			FUNC9(efx, hw, efx->net_dev, "MAC reset failed\n");
			break;
		}
		count++;
		FUNC10(10);
	}

	/* Ensure the correct MAC is selected before statistics
	 * are re-enabled by the caller */
	FUNC6(efx, &mac_ctrl, FR_AB_MAC_CTRL);

	FUNC7(efx);
}