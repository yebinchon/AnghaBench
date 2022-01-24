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
struct pcie_service_card {int /*<<< orphan*/ * cmd_buf; int /*<<< orphan*/ * cmdrsp_buf; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card;

	if (!adapter)
		return 0;

	card = adapter->card;

	if (card && card->cmdrsp_buf) {
		FUNC1(adapter, card->cmdrsp_buf,
					 PCI_DMA_FROMDEVICE);
		FUNC0(card->cmdrsp_buf);
		card->cmdrsp_buf = NULL;
	}

	if (card && card->cmd_buf) {
		FUNC1(adapter, card->cmd_buf,
					 PCI_DMA_TODEVICE);
		FUNC0(card->cmd_buf);
		card->cmd_buf = NULL;
	}
	return 0;
}