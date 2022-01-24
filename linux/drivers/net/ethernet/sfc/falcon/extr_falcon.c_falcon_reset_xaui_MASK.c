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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FRF_AB_XX_RST_XX_EN ; 
 int /*<<< orphan*/  FRF_AB_XX_SD_RST_ACT ; 
 int /*<<< orphan*/  FR_AB_XX_PWR_RST ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	ef4_oword_t reg;
	int count;

	/* Don't fetch MAC statistics over an XMAC reset */
	FUNC2(nic_data->stats_disable_count == 0);

	/* Start reset sequence */
	FUNC1(reg, FRF_AB_XX_RST_XX_EN, 1);
	FUNC4(efx, &reg, FR_AB_XX_PWR_RST);

	/* Wait up to 10 ms for completion, then reinitialise */
	for (count = 0; count < 1000; count++) {
		FUNC3(efx, &reg, FR_AB_XX_PWR_RST);
		if (FUNC0(reg, FRF_AB_XX_RST_XX_EN) == 0 &&
		    FUNC0(reg, FRF_AB_XX_SD_RST_ACT) == 0) {
			FUNC5(efx);
			return 0;
		}
		FUNC7(10);
	}
	FUNC6(efx, hw, efx->net_dev,
		  "timed out waiting for XAUI/XGXS reset\n");
	return -ETIMEDOUT;
}