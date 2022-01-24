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
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {struct pci_dev* dev; TYPE_1__ pcie; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_pcie_card_reg {int /*<<< orphan*/  drv_rdy; } ;
struct mwifiex_adapter {scalar_t__ seq_num; struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	struct pci_dev *pdev = card->dev;

	if (FUNC2(adapter, reg->drv_rdy, 0x00000000))
		FUNC0(adapter, ERROR, "Failed to write driver not-ready signature\n");

	FUNC3(pdev);

	adapter->seq_num = 0;

	FUNC1(adapter);
}