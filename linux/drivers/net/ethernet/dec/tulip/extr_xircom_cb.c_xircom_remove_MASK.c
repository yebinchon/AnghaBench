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
struct xircom_private {int /*<<< orphan*/  rx_dma_handle; int /*<<< orphan*/  rx_buffer; int /*<<< orphan*/  tx_dma_handle; int /*<<< orphan*/  tx_buffer; int /*<<< orphan*/  ioaddr; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct xircom_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct xircom_private *card = FUNC2(dev);
	struct device *d = &pdev->dev;

	FUNC7(dev);
	FUNC5(pdev, card->ioaddr);
	FUNC0(d, 8192, card->tx_buffer, card->tx_dma_handle);
	FUNC0(d, 8192, card->rx_buffer, card->rx_dma_handle);
	FUNC1(dev);
	FUNC6(pdev);
	FUNC3(pdev);
}