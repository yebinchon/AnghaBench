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
struct ath10k_pci {int link_ctl; int /*<<< orphan*/  pdev; } ;
struct ath10k {int dummy; } ;
typedef  enum ath10k_firmware_mode { ____Placeholder_ath10k_firmware_mode } ath10k_firmware_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_ASPMC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 scalar_t__ FUNC6 (struct ath10k*) ; 
 int FUNC7 (struct ath10k*) ; 
 int FUNC8 (struct ath10k*) ; 
 struct ath10k_pci* FUNC9 (struct ath10k*) ; 
 int FUNC10 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct ath10k *ar,
				   enum ath10k_firmware_mode fw_mode)
{
	struct ath10k_pci *ar_pci = FUNC9(ar);
	int ret;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot hif power up\n");

	FUNC12(ar_pci->pdev, PCI_EXP_LNKCTL,
				  &ar_pci->link_ctl);
	FUNC13(ar_pci->pdev, PCI_EXP_LNKCTL,
				   ar_pci->link_ctl & ~PCI_EXP_LNKCTL_ASPMC);

	/*
	 * Bring the target up cleanly.
	 *
	 * The target may be in an undefined state with an AUX-powered Target
	 * and a Host in WoW mode. If the Host crashes, loses power, or is
	 * restarted (without unloading the driver) then the Target is left
	 * (aux) powered and running. On a subsequent driver load, the Target
	 * is in an unexpected state. We try to catch that here in order to
	 * reset the Target and retry the probe.
	 */
	ret = FUNC3(ar);
	if (ret) {
		if (FUNC6(ar)) {
			FUNC11(ar, "firmware crashed during chip reset\n");
			FUNC4(ar);
			FUNC5(ar);
		}

		FUNC1(ar, "failed to reset chip: %d\n", ret);
		goto err_sleep;
	}

	ret = FUNC8(ar);
	if (ret) {
		FUNC1(ar, "failed to initialize CE: %d\n", ret);
		goto err_sleep;
	}

	ret = FUNC7(ar);
	if (ret) {
		FUNC1(ar, "failed to setup init config: %d\n", ret);
		goto err_ce;
	}

	ret = FUNC10(ar);
	if (ret) {
		FUNC1(ar, "could not wake up target CPU: %d\n", ret);
		goto err_ce;
	}

	return 0;

err_ce:
	FUNC2(ar);

err_sleep:
	return ret;
}