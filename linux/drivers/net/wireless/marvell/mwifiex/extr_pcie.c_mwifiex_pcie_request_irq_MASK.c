#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int msg_id; struct pci_dev* dev; } ;
struct TYPE_7__ {TYPE_1__* reg; } ;
struct pcie_service_card {int msix_enable; int msi_enable; TYPE_3__ share_irq_ctx; TYPE_3__* msix_ctx; TYPE_4__* msix_entries; TYPE_2__ pcie; struct pci_dev* dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;
struct TYPE_9__ {int entry; int /*<<< orphan*/  vector; } ;
struct TYPE_6__ {scalar_t__ msix_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MSG ; 
 int MWIFIEX_NUM_MSIX_VECTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  mwifiex_pcie_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(struct mwifiex_adapter *adapter)
{
	int ret, i, j;
	struct pcie_service_card *card = adapter->card;
	struct pci_dev *pdev = card->dev;

	if (card->pcie.reg->msix_support) {
		for (i = 0; i < MWIFIEX_NUM_MSIX_VECTORS; i++)
			card->msix_entries[i].entry = i;
		ret = FUNC5(pdev, card->msix_entries,
					    MWIFIEX_NUM_MSIX_VECTORS);
		if (!ret) {
			for (i = 0; i < MWIFIEX_NUM_MSIX_VECTORS; i++) {
				card->msix_ctx[i].dev = pdev;
				card->msix_ctx[i].msg_id = i;

				ret = FUNC7(card->msix_entries[i].vector,
						  mwifiex_pcie_interrupt, 0,
						  "MWIFIEX_PCIE_MSIX",
						  &card->msix_ctx[i]);
				if (ret)
					break;
			}

			if (ret) {
				FUNC1(adapter, INFO, "request_irq fail: %d\n",
					    ret);
				for (j = 0; j < i; j++)
					FUNC0(card->msix_entries[j].vector,
						 &card->msix_ctx[i]);
				FUNC3(pdev);
			} else {
				FUNC1(adapter, MSG, "MSIx enabled!");
				card->msix_enable = 1;
				return 0;
			}
		}
	}

	if (FUNC4(pdev) != 0)
		FUNC2(pdev);
	else
		card->msi_enable = 1;

	FUNC1(adapter, INFO, "msi_enable = %d\n", card->msi_enable);

	card->share_irq_ctx.dev = pdev;
	card->share_irq_ctx.msg_id = -1;
	ret = FUNC7(pdev->irq, mwifiex_pcie_interrupt, IRQF_SHARED,
			  "MRVL_PCIE", &card->share_irq_ctx);
	if (ret) {
		FUNC6("request_irq failed: ret=%d\n", ret);
		return -1;
	}

	return 0;
}