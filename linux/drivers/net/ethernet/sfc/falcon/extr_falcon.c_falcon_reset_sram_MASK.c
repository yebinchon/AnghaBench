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
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FRF_AB_GPIO1_OEN ; 
 int /*<<< orphan*/  FRF_AB_GPIO1_OUT ; 
 int /*<<< orphan*/  FRF_AZ_SRM_INIT_EN ; 
 int /*<<< orphan*/  FRF_AZ_SRM_NB_SZ ; 
 int /*<<< orphan*/  FR_AB_GPIO_CTL ; 
 int /*<<< orphan*/  FR_AZ_SRM_CFG ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ef4_nic *efx)
{
	ef4_oword_t srm_cfg_reg_ker, gpio_cfg_reg_ker;
	int count;

	/* Set the SRAM wake/sleep GPIO appropriately. */
	FUNC3(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);
	FUNC2(gpio_cfg_reg_ker, FRF_AB_GPIO1_OEN, 1);
	FUNC2(gpio_cfg_reg_ker, FRF_AB_GPIO1_OUT, 1);
	FUNC4(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);

	/* Initiate SRAM reset */
	FUNC1(srm_cfg_reg_ker,
			     FRF_AZ_SRM_INIT_EN, 1,
			     FRF_AZ_SRM_NB_SZ, 0);
	FUNC4(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);

	/* Wait for SRAM reset to complete */
	count = 0;
	do {
		FUNC5(efx, hw, efx->net_dev,
			  "waiting for SRAM reset (attempt %d)...\n", count);

		/* SRAM reset is slow; expect around 16ms */
		FUNC7(HZ / 50);

		/* Check for reset complete */
		FUNC3(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);
		if (!FUNC0(srm_cfg_reg_ker, FRF_AZ_SRM_INIT_EN)) {
			FUNC5(efx, hw, efx->net_dev,
				  "SRAM reset complete\n");

			return 0;
		}
	} while (++count < 20);	/* wait up to 0.4 sec */

	FUNC6(efx, hw, efx->net_dev, "timed out waiting for SRAM reset\n");
	return -ETIMEDOUT;
}