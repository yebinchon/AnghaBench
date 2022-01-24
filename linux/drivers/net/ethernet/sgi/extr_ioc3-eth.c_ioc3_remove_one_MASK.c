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
struct ioc3_private {int /*<<< orphan*/  all_regs; int /*<<< orphan*/  ioc3_timer; int /*<<< orphan*/  txr_dma; int /*<<< orphan*/  txr; int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  rxr_dma; int /*<<< orphan*/  rxr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_RING_SIZE ; 
 int /*<<< orphan*/  TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ioc3_private* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC5(pdev);
	struct ioc3_private *ip = FUNC4(dev);

	FUNC1(ip->dma_dev, RX_RING_SIZE, ip->rxr,
			      ip->rxr_dma, 0);
	FUNC1(ip->dma_dev, TX_RING_SIZE, ip->txr,
			      ip->txr_dma, 0);

	FUNC7(dev);
	FUNC0(&ip->ioc3_timer);

	FUNC3(ip->all_regs);
	FUNC6(pdev);
	FUNC2(dev);
	/* We should call pci_disable_device(pdev); here if the IOC3 wasn't
	 * such a weird device ...
	 */
}