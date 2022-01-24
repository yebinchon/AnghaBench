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
struct smsc9420_pdata {int tx_buffers; int rx_buffers; scalar_t__ ioaddr; int /*<<< orphan*/  rx_dma_addr; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; } ;
struct smsc9420_dma_desc {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LAN9420_CPSR_ENDIAN_OFFSET ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct smsc9420_pdata* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *dev;
	struct smsc9420_pdata *pd;

	dev = FUNC6(pdev);
	if (!dev)
		return;

	pd = FUNC3(dev);
	FUNC8(dev);

	/* tx_buffers and rx_buffers are freed in stop */
	FUNC0(pd->tx_buffers);
	FUNC0(pd->rx_buffers);

	FUNC0(!pd->tx_ring);
	FUNC0(!pd->rx_ring);

	FUNC5(pdev, sizeof(struct smsc9420_dma_desc) *
		(RX_RING_SIZE + TX_RING_SIZE), pd->rx_ring, pd->rx_dma_addr);

	FUNC2(pd->ioaddr - LAN9420_CPSR_ENDIAN_OFFSET);
	FUNC7(pdev);
	FUNC1(dev);
	FUNC4(pdev);
}