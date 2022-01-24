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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct atl1c_hw {int revision_id; int hibernate; int phy_configured; int preamble_len; int indirect_tab; int ict; int smb_timer; int rx_imt; int tx_imt; int tpd_burst; int rfd_burst; int /*<<< orphan*/  dmar_block; int /*<<< orphan*/  dma_order; scalar_t__ base_cpu; int /*<<< orphan*/  autoneg_advertised; int /*<<< orphan*/  max_frame_size; int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  media_type; int /*<<< orphan*/  subsystem_id; int /*<<< orphan*/  subsystem_vendor_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;
struct TYPE_5__ {int count; } ;
struct atl1c_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  irq_sem; TYPE_3__* netdev; TYPE_2__ rfd_ring; TYPE_1__* tpd_ring; int /*<<< orphan*/  link_duplex; int /*<<< orphan*/  link_speed; scalar_t__ wol; struct pci_dev* pdev; struct atl1c_hw hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtu; } ;
struct TYPE_4__ {int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_Autoneg ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FULL_DUPLEX ; 
 int /*<<< orphan*/  IMR_NORMAL_MASK ; 
 int /*<<< orphan*/  MEDIA_TYPE_AUTO_SENSOR ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  __AT_DOWN ; 
 scalar_t__ FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  atl1c_dma_ord_out ; 
 int /*<<< orphan*/  atl1c_dma_req_1024 ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct atl1c_adapter *adapter)
{
	struct atl1c_hw *hw   = &adapter->hw;
	struct pci_dev	*pdev = adapter->pdev;
	u32 revision;


	adapter->wol = 0;
	FUNC6(&pdev->dev, false);
	adapter->link_speed = SPEED_0;
	adapter->link_duplex = FULL_DUPLEX;
	adapter->tpd_ring[0].count = 1024;
	adapter->rfd_ring.count = 512;

	hw->vendor_id = pdev->vendor;
	hw->device_id = pdev->device;
	hw->subsystem_vendor_id = pdev->subsystem_vendor;
	hw->subsystem_id = pdev->subsystem_device;
	FUNC7(pdev, PCI_CLASS_REVISION, &revision);
	hw->revision_id = revision & 0xFF;
	/* before link up, we assume hibernate is true */
	hw->hibernate = true;
	hw->media_type = MEDIA_TYPE_AUTO_SENSOR;
	if (FUNC3(hw) != 0) {
		FUNC5(&pdev->dev, "set mac function pointers failed\n");
		return -1;
	}
	FUNC1(hw);

	hw->intr_mask = IMR_NORMAL_MASK;
	hw->phy_configured = false;
	hw->preamble_len = 7;
	hw->max_frame_size = adapter->netdev->mtu;
	hw->autoneg_advertised = ADVERTISED_Autoneg;
	hw->indirect_tab = 0xE4E4E4E4;
	hw->base_cpu = 0;

	hw->ict = 50000;		/* 100ms */
	hw->smb_timer = 200000;	  	/* 400ms */
	hw->rx_imt = 200;
	hw->tx_imt = 1000;

	hw->tpd_burst = 5;
	hw->rfd_burst = 8;
	hw->dma_order = atl1c_dma_ord_out;
	hw->dmar_block = atl1c_dma_req_1024;

	if (FUNC0(adapter)) {
		FUNC5(&pdev->dev, "Unable to allocate memory for queues\n");
		return -ENOMEM;
	}
	/* TODO */
	FUNC2(adapter, adapter->netdev);
	FUNC4(&adapter->irq_sem, 1);
	FUNC9(&adapter->mdio_lock);
	FUNC8(__AT_DOWN, &adapter->flags);

	return 0;
}