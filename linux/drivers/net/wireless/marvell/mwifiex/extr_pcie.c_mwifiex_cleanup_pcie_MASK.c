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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int /*<<< orphan*/  pci_mmap1; int /*<<< orphan*/  pci_mmap; int /*<<< orphan*/  work; TYPE_1__ pcie; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_pcie_card_reg {int /*<<< orphan*/  drv_rdy; int /*<<< orphan*/  fw_status; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FIRMWARE_READY_PCIE ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC8(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	struct pci_dev *pdev = card->dev;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	int ret;
	u32 fw_status;

	FUNC0(&card->work);

	ret = FUNC3(adapter, reg->fw_status, &fw_status);
	if (fw_status == FIRMWARE_READY_PCIE) {
		FUNC1(adapter, INFO,
			    "Clearing driver ready signature\n");
		if (FUNC4(adapter, reg->drv_rdy, 0x00000000))
			FUNC1(adapter, ERROR,
				    "Failed to write driver not-ready signature\n");
	}

	FUNC5(pdev);

	FUNC6(pdev, card->pci_mmap);
	FUNC6(pdev, card->pci_mmap1);
	FUNC7(pdev, 2);
	FUNC7(pdev, 0);

	FUNC2(adapter);
}