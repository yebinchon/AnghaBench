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
struct sja1000_priv {scalar_t__ reg_base; } ;
struct plx_pci_card {scalar_t__ conf_addr; int /*<<< orphan*/  (* reset_func ) (struct pci_dev*) ;struct net_device** net_dev; } ;
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ MARATHON_PCIE_DEVICE_ID ; 
 scalar_t__ PCI_DEVICE_ID_PLX_9056 ; 
 scalar_t__ PLX9056_INTCSR ; 
 scalar_t__ PLX_INTCSR ; 
 int PLX_PCI_MAX_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct plx_pci_card*) ; 
 struct sja1000_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct plx_pci_card* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct plx_pci_card *card = FUNC6(pdev);
	struct net_device *dev;
	struct sja1000_priv *priv;
	int i = 0;

	for (i = 0; i < PLX_PCI_MAX_CHAN; i++) {
		dev = card->net_dev[i];
		if (!dev)
			continue;

		FUNC0(&pdev->dev, "Removing %s\n", dev->name);
		FUNC9(dev);
		priv = FUNC4(dev);
		if (priv->reg_base)
			FUNC7(pdev, priv->reg_base);
		FUNC1(dev);
	}

	card->reset_func(pdev);

	/*
	 * Disable interrupts from PCI-card and disable local
	 * interrupts
	 */
	if (pdev->device != PCI_DEVICE_ID_PLX_9056 &&
	    pdev->device != MARATHON_PCIE_DEVICE_ID)
		FUNC2(0x0, card->conf_addr + PLX_INTCSR);
	else
		FUNC2(0x0, card->conf_addr + PLX9056_INTCSR);

	if (card->conf_addr)
		FUNC7(pdev, card->conf_addr);

	FUNC3(card);

	FUNC5(pdev);
}