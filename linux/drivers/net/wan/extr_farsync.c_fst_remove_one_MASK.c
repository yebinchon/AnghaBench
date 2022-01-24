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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct fst_card_info {int nports; scalar_t__ family; size_t card_no; int /*<<< orphan*/  tx_dma_handle_card; int /*<<< orphan*/  tx_dma_handle_host; int /*<<< orphan*/  device; int /*<<< orphan*/  rx_dma_handle_card; int /*<<< orphan*/  rx_dma_handle_host; int /*<<< orphan*/  mem; int /*<<< orphan*/  ctlmem; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ports; } ;

/* Variables and functions */
 scalar_t__ FST_FAMILY_TXU ; 
 int /*<<< orphan*/  FST_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fst_card_info*) ; 
 int /*<<< orphan*/ ** fst_card_array ; 
 int /*<<< orphan*/  FUNC1 (struct fst_card_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fst_card_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void
FUNC8(struct pci_dev *pdev)
{
	struct fst_card_info *card;
	int i;

	card = FUNC4(pdev);

	for (i = 0; i < card->nports; i++) {
		struct net_device *dev = FUNC6(&card->ports[i]);
		FUNC7(dev);
	}

	FUNC1(card);
	FUNC0(card->irq, card);

	FUNC2(card->ctlmem);
	FUNC2(card->mem);
	FUNC5(pdev);
	if (card->family == FST_FAMILY_TXU) {
		/*
		 * Free dma buffers
		 */
		FUNC3(card->device, FST_MAX_MTU,
				    card->rx_dma_handle_host,
				    card->rx_dma_handle_card);
		FUNC3(card->device, FST_MAX_MTU,
				    card->tx_dma_handle_host,
				    card->tx_dma_handle_card);
	}
	fst_card_array[card->card_no] = NULL;
}