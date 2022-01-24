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
struct hinic_txq {int /*<<< orphan*/  irq_name; struct hinic_sq* sq; int /*<<< orphan*/  netdev; } ;
struct hinic_sq {int /*<<< orphan*/  irq; int /*<<< orphan*/  msix_entry; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; int /*<<< orphan*/  tx_weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_IRQ_NO_COALESC ; 
 int /*<<< orphan*/  TX_IRQ_NO_CREDIT ; 
 int /*<<< orphan*/  TX_IRQ_NO_LLI_TIMER ; 
 int /*<<< orphan*/  TX_IRQ_NO_PENDING ; 
 int /*<<< orphan*/  TX_IRQ_NO_RESEND_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_hwdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hinic_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hinic_txq*) ; 
 int /*<<< orphan*/  tx_irq ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_txq*) ; 

__attribute__((used)) static int FUNC6(struct hinic_txq *txq)
{
	struct hinic_dev *nic_dev = FUNC2(txq->netdev);
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	struct hinic_sq *sq = txq->sq;
	int err;

	FUNC4(txq, nic_dev->tx_weight);

	FUNC1(nic_dev->hwdev, sq->msix_entry,
			     TX_IRQ_NO_PENDING, TX_IRQ_NO_COALESC,
			     TX_IRQ_NO_LLI_TIMER, TX_IRQ_NO_CREDIT,
			     TX_IRQ_NO_RESEND_TIMER);

	err = FUNC3(sq->irq, tx_irq, 0, txq->irq_name, txq);
	if (err) {
		FUNC0(&pdev->dev, "Failed to request Tx irq\n");
		FUNC5(txq);
		return err;
	}

	return 0;
}