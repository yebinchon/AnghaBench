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
typedef  int u16 ;
struct pci_dev {int pcie_mpss; int /*<<< orphan*/  dev; } ;
struct et131x_adapter {scalar_t__ rom_addr; int /*<<< orphan*/  addr; int /*<<< orphan*/  has_eeprom; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ET1310_PCI_ACK_NACK ; 
 int /*<<< orphan*/  ET1310_PCI_L0L1LATENCY ; 
 scalar_t__ ET1310_PCI_MAC_ADDRESS ; 
 int /*<<< orphan*/  ET1310_PCI_REPLAY ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int const) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC9(struct et131x_adapter *adapter,
			   struct pci_dev *pdev)
{
	u16 max_payload;
	int i, rc;

	rc = FUNC2(adapter);
	if (rc < 0)
		goto out;

	if (!FUNC4(pdev)) {
		FUNC0(&pdev->dev, "Missing PCIe capabilities\n");
		goto err_out;
	}

	/* Program the Ack/Nak latency and replay timers */
	max_payload = pdev->pcie_mpss;

	if (max_payload < 2) {
		static const u16 acknak[2] = { 0x76, 0xD0 };
		static const u16 replay[2] = { 0x1E0, 0x2ED };

		if (FUNC7(pdev, ET1310_PCI_ACK_NACK,
					  acknak[max_payload])) {
			FUNC0(&pdev->dev,
				"Could not write PCI config space for ACK/NAK\n");
			goto err_out;
		}
		if (FUNC7(pdev, ET1310_PCI_REPLAY,
					  replay[max_payload])) {
			FUNC0(&pdev->dev,
				"Could not write PCI config space for Replay Timer\n");
			goto err_out;
		}
	}

	/* l0s and l1 latency timers.  We are using default values.
	 * Representing 001 for L0s and 010 for L1
	 */
	if (FUNC6(pdev, ET1310_PCI_L0L1LATENCY, 0x11)) {
		FUNC0(&pdev->dev,
			"Could not write PCI config space for Latency Timers\n");
		goto err_out;
	}

	/* Change the max read size to 2k */
	if (FUNC8(pdev, 2048)) {
		FUNC0(&pdev->dev,
			"Couldn't change PCI config space for Max read size\n");
		goto err_out;
	}

	/* Get MAC address from config space if an eeprom exists, otherwise
	 * the MAC address there will not be valid
	 */
	if (!adapter->has_eeprom) {
		FUNC1(adapter);
		return 0;
	}

	for (i = 0; i < ETH_ALEN; i++) {
		if (FUNC5(pdev, ET1310_PCI_MAC_ADDRESS + i,
					 adapter->rom_addr + i)) {
			FUNC0(&pdev->dev, "Could not read PCI config space for MAC address\n");
			goto err_out;
		}
	}
	FUNC3(adapter->addr, adapter->rom_addr);
out:
	return rc;
err_out:
	rc = -EIO;
	goto out;
}