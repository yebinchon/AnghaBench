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
typedef  int u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; struct mwifiex_adapter* adapter; int /*<<< orphan*/  fw_done; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_pcie_card_reg {int /*<<< orphan*/  fw_status; } ;
struct mwifiex_adapter {int /*<<< orphan*/  mfg_mode; int /*<<< orphan*/  priv_num; } ;

/* Variables and functions */
 int FIRMWARE_READY_PCIE ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int /*<<< orphan*/  MWIFIEX_FUNC_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 struct pcie_service_card* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct pcie_service_card *card;
	struct mwifiex_adapter *adapter;
	struct mwifiex_private *priv;
	const struct mwifiex_pcie_card_reg *reg;
	u32 fw_status;
	int ret;

	card = FUNC6(pdev);

	FUNC7(&card->fw_done);

	adapter = card->adapter;
	if (!adapter || !adapter->priv_num)
		return;

	reg = card->pcie.reg;
	if (reg)
		ret = FUNC4(adapter, reg->fw_status, &fw_status);
	else
		fw_status = -1;

	if (fw_status == FIRMWARE_READY_PCIE && !adapter->mfg_mode) {
		FUNC0(adapter);

		priv = FUNC2(adapter, MWIFIEX_BSS_ROLE_ANY);

		FUNC1(priv);

		FUNC3(priv, MWIFIEX_FUNC_SHUTDOWN);
	}

	FUNC5(adapter);
}