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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ems_pci_card {int channels; int /*<<< orphan*/ * conf_addr; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/ * base_addr; struct net_device** net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ems_pci_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct ems_pci_card* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct ems_pci_card *card = FUNC4(pdev);
	struct net_device *dev;
	int i = 0;

	for (i = 0; i < card->channels; i++) {
		dev = card->net_dev[i];

		if (!dev)
			continue;

		FUNC0(&pdev->dev, "Removing %s.\n", dev->name);
		FUNC6(dev);
		FUNC1(dev);
	}

	if (card->base_addr != NULL)
		FUNC5(card->pci_dev, card->base_addr);

	if (card->conf_addr != NULL)
		FUNC5(card->pci_dev, card->conf_addr);

	FUNC2(card);

	FUNC3(pdev);
}