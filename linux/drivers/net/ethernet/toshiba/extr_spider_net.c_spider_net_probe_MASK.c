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
struct spider_net_card {int /*<<< orphan*/  netdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spider_net_card*) ; 
 int FUNC2 (struct spider_net_card*) ; 
 struct spider_net_card* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct spider_net_card*) ; 

__attribute__((used)) static int
FUNC7(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = -EIO;
	struct spider_net_card *card;

	card = FUNC3(pdev);
	if (!card)
		goto out;

	FUNC6(card);
	FUNC1(card);

	err = FUNC4(card);
	if (err)
		goto out_undo_pci;

	err = FUNC2(card);
	if (err)
		goto out_undo_pci;

	return 0;

out_undo_pci:
	FUNC5(card);
	FUNC0(card->netdev);
out:
	return err;
}