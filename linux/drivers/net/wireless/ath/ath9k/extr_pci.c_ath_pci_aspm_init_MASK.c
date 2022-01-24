#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
struct ath_softc {int /*<<< orphan*/  dev; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {int /*<<< orphan*/  aspm_l1_fix; } ;
struct ath_hw {int aspm_enabled; TYPE_2__ config; int /*<<< orphan*/  is_pciexpress; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_3__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ ATH_BTCOEX_CFG_NONE ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_ASPM_L0S ; 
 int PCI_EXP_LNKCTL_ASPM_L1 ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ath_common *common)
{
	struct ath_softc *sc = (struct ath_softc *) common->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct pci_dev *pdev = FUNC8(sc->dev);
	struct pci_dev *parent;
	u16 aspm;

	if (!ah->is_pciexpress)
		return;

	parent = pdev->bus->self;
	if (!parent)
		return;

	if ((FUNC3(ah) != ATH_BTCOEX_CFG_NONE) &&
	    (FUNC0(ah))) {
		/* Bluetooth coexistence requires disabling ASPM. */
		FUNC6(pdev, PCI_EXP_LNKCTL,
			PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1);

		/*
		 * Both upstream and downstream PCIe components should
		 * have the same ASPM settings.
		 */
		FUNC6(parent, PCI_EXP_LNKCTL,
			PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1);

		FUNC4(common, "Disabling ASPM since BTCOEX is enabled\n");
		return;
	}

	/*
	 * 0x70c - Ack Frequency Register.
	 *
	 * Bits 27:29 - DEFAULT_L1_ENTRANCE_LATENCY.
	 *
	 * 000 : 1 us
	 * 001 : 2 us
	 * 010 : 4 us
	 * 011 : 8 us
	 * 100 : 16 us
	 * 101 : 32 us
	 * 110/111 : 64 us
	 */
	if (FUNC1(ah))
		FUNC5(pdev, 0x70c, &ah->config.aspm_l1_fix);

	FUNC7(parent, PCI_EXP_LNKCTL, &aspm);
	if (aspm & (PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1)) {
		ah->aspm_enabled = true;
		/* Initialize PCIe PM and SERDES registers. */
		FUNC2(ah, false);
		FUNC4(common, "ASPM enabled: 0x%x\n", aspm);
	}
}