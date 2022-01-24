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
struct falcon_nic_data {int /*<<< orphan*/  pci_dev2; } ;
struct ef4_nic {int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FFE_AB_EXT_PHY_RST_DUR_10240US ; 
 int /*<<< orphan*/  FRF_AB_EE_RST_CTL ; 
 int /*<<< orphan*/  FRF_AB_EXT_PHY_RST_CTL ; 
 int /*<<< orphan*/  FRF_AB_EXT_PHY_RST_DUR ; 
 int /*<<< orphan*/  FRF_AB_PCIE_CORE_RST_CTL ; 
 int /*<<< orphan*/  FRF_AB_PCIE_NSTKY_RST_CTL ; 
 int /*<<< orphan*/  FRF_AB_PCIE_SD_RST_CTL ; 
 int /*<<< orphan*/  FRF_AB_SWRST ; 
 int /*<<< orphan*/  FR_AB_GLB_CTL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int RESET_TYPE_INVISIBLE ; 
 int RESET_TYPE_WORLD ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ef4_nic *efx, enum reset_type method)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	ef4_oword_t glb_ctl_reg_ker;
	int rc;

	FUNC7(efx, hw, efx->net_dev, "performing %s hardware reset\n",
		  FUNC3(method));

	/* Initiate device reset */
	if (method == RESET_TYPE_WORLD) {
		rc = FUNC10(efx->pci_dev);
		if (rc) {
			FUNC8(efx, drv, efx->net_dev,
				  "failed to backup PCI state of primary "
				  "function prior to hardware reset\n");
			goto fail1;
		}
		if (FUNC4(efx)) {
			rc = FUNC10(nic_data->pci_dev2);
			if (rc) {
				FUNC8(efx, drv, efx->net_dev,
					  "failed to backup PCI state of "
					  "secondary function prior to "
					  "hardware reset\n");
				goto fail2;
			}
		}

		FUNC1(glb_ctl_reg_ker,
				     FRF_AB_EXT_PHY_RST_DUR,
				     FFE_AB_EXT_PHY_RST_DUR_10240US,
				     FRF_AB_SWRST, 1);
	} else {
		FUNC2(glb_ctl_reg_ker,
				     /* exclude PHY from "invisible" reset */
				     FRF_AB_EXT_PHY_RST_CTL,
				     method == RESET_TYPE_INVISIBLE,
				     /* exclude EEPROM/flash and PCIe */
				     FRF_AB_PCIE_CORE_RST_CTL, 1,
				     FRF_AB_PCIE_NSTKY_RST_CTL, 1,
				     FRF_AB_PCIE_SD_RST_CTL, 1,
				     FRF_AB_EE_RST_CTL, 1,
				     FRF_AB_EXT_PHY_RST_DUR,
				     FFE_AB_EXT_PHY_RST_DUR_10240US,
				     FRF_AB_SWRST, 1);
	}
	FUNC6(efx, &glb_ctl_reg_ker, FR_AB_GLB_CTL);

	FUNC7(efx, hw, efx->net_dev, "waiting for hardware reset\n");
	FUNC11(HZ / 20);

	/* Restore PCI configuration if needed */
	if (method == RESET_TYPE_WORLD) {
		if (FUNC4(efx))
			FUNC9(nic_data->pci_dev2);
		FUNC9(efx->pci_dev);
		FUNC7(efx, drv, efx->net_dev,
			  "successfully restored PCI config\n");
	}

	/* Assert that reset complete */
	FUNC5(efx, &glb_ctl_reg_ker, FR_AB_GLB_CTL);
	if (FUNC0(glb_ctl_reg_ker, FRF_AB_SWRST) != 0) {
		rc = -ETIMEDOUT;
		FUNC8(efx, hw, efx->net_dev,
			  "timed out waiting for hardware reset\n");
		goto fail3;
	}
	FUNC7(efx, hw, efx->net_dev, "hardware reset complete\n");

	return 0;

	/* pci_save_state() and pci_restore_state() MUST be called in pairs */
fail2:
	FUNC9(efx->pci_dev);
fail1:
fail3:
	return rc;
}