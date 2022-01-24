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
struct net_device {int dummy; } ;
struct bnad {int num_tx; int num_txq_per_tx; int num_rx; int num_rxp_per_rx; int id; int /*<<< orphan*/  bar0; int /*<<< orphan*/  work_q; int /*<<< orphan*/  wq_name; int /*<<< orphan*/  rx_coalescing_timeo; int /*<<< orphan*/  tx_coalescing_timeo; int /*<<< orphan*/  rxq_depth; int /*<<< orphan*/  txq_depth; scalar_t__ msix_num; int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  cfg_flags; scalar_t__ mmio_len; int /*<<< orphan*/  mmio_start; struct pci_dev* pcidev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_RX_COALESCING_TIMEO ; 
 int /*<<< orphan*/  BFI_TX_COALESCING_TIMEO ; 
 int /*<<< orphan*/  BNAD_CF_DIM_ENABLED ; 
 int /*<<< orphan*/  BNAD_CF_MSIX ; 
 scalar_t__ BNAD_MAILBOX_MSIX_VECTORS ; 
 char* BNAD_NAME ; 
 int /*<<< orphan*/  BNAD_RXQ_DEPTH ; 
 int /*<<< orphan*/  BNAD_TXQ_DEPTH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnad_msix_disable ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int
FUNC13(struct bnad *bnad,
	  struct pci_dev *pdev, struct net_device *netdev)
{
	unsigned long flags;

	FUNC0(netdev, &pdev->dev);
	FUNC9(pdev, netdev);

	bnad->netdev = netdev;
	bnad->pcidev = pdev;
	bnad->mmio_start = FUNC8(pdev, 0);
	bnad->mmio_len = FUNC7(pdev, 0);
	bnad->bar0 = FUNC5(bnad->mmio_start, bnad->mmio_len);
	if (!bnad->bar0) {
		FUNC3(&pdev->dev, "ioremap for bar0 failed\n");
		return -ENOMEM;
	}
	FUNC4(&pdev->dev, "bar0 mapped to %p, len %llu\n", bnad->bar0,
		 (unsigned long long) bnad->mmio_len);

	FUNC10(&bnad->bna_lock, flags);
	if (!bnad_msix_disable)
		bnad->cfg_flags = BNAD_CF_MSIX;

	bnad->cfg_flags |= BNAD_CF_DIM_ENABLED;

	FUNC1(bnad);
	FUNC11(&bnad->bna_lock, flags);

	bnad->msix_num = (bnad->num_tx * bnad->num_txq_per_tx) +
		(bnad->num_rx * bnad->num_rxp_per_rx) +
			 BNAD_MAILBOX_MSIX_VECTORS;

	bnad->txq_depth = BNAD_TXQ_DEPTH;
	bnad->rxq_depth = BNAD_RXQ_DEPTH;

	bnad->tx_coalescing_timeo = BFI_TX_COALESCING_TIMEO;
	bnad->rx_coalescing_timeo = BFI_RX_COALESCING_TIMEO;

	FUNC12(bnad->wq_name, "%s_wq_%d", BNAD_NAME, bnad->id);
	bnad->work_q = FUNC2(bnad->wq_name);
	if (!bnad->work_q) {
		FUNC6(bnad->bar0);
		return -ENOMEM;
	}

	return 0;
}