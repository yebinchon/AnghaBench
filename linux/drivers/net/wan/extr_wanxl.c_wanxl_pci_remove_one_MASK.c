#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct card_status {int dummy; } ;
struct card {int n_ports; int /*<<< orphan*/  status_address; TYPE_3__* status; scalar_t__ plx; scalar_t__* rx_skbs; int /*<<< orphan*/  pdev; scalar_t__ irq; TYPE_1__* ports; } ;
struct TYPE_6__ {TYPE_2__* rx_descs; } ;
struct TYPE_5__ {int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct card*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct card* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct card*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct card *card = FUNC7(pdev);
	int i;

	for (i = 0; i < card->n_ports; i++) {
		FUNC10(card->ports[i].dev);
		FUNC2(card->ports[i].dev);
	}

	/* unregister and free all host resources */
	if (card->irq)
		FUNC1(card->irq, card);

	FUNC11(card);

	for (i = 0; i < RX_QUEUE_LENGTH; i++)
		if (card->rx_skbs[i]) {
			FUNC9(card->pdev,
					 card->status->rx_descs[i].address,
					 BUFFER_LENGTH, PCI_DMA_FROMDEVICE);
			FUNC0(card->rx_skbs[i]);
		}

	if (card->plx)
		FUNC3(card->plx);

	if (card->status)
		FUNC6(pdev, sizeof(struct card_status),
				    card->status, card->status_address);

	FUNC8(pdev);
	FUNC5(pdev);
	FUNC4(card);
}