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
struct vortex_private {int drv_flags; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  rx_ring; scalar_t__ ioaddr; scalar_t__ pm_state_valid; scalar_t__ cb_fn_base; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct boom_tx_desc {int dummy; } ;
struct boom_rx_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEPROM_RESET ; 
 scalar_t__ EL3_CMD ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int TotalReset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 struct vortex_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC6(pdev);
	struct vortex_private *vp;

	if (!dev) {
		FUNC11("vortex_remove_one called for Compaq device!\n");
		FUNC0();
	}

	vp = FUNC4(dev);

	if (vp->cb_fn_base)
		FUNC7(pdev, vp->cb_fn_base);

	FUNC12(dev);

	FUNC10(pdev, PCI_D0);	/* Go active */
	if (vp->pm_state_valid)
		FUNC9(pdev);
	FUNC5(pdev);

	/* Should really use issue_and_wait() here */
	FUNC3(TotalReset | ((vp->drv_flags & EEPROM_RESET) ? 0x04 : 0x14),
	     vp->ioaddr + EL3_CMD);

	FUNC7(pdev, vp->ioaddr);

	FUNC1(&pdev->dev,
			sizeof(struct boom_rx_desc) * RX_RING_SIZE +
			sizeof(struct boom_tx_desc) * TX_RING_SIZE,
			vp->rx_ring, vp->rx_ring_dma);

	FUNC8(pdev);

	FUNC2(dev);
}