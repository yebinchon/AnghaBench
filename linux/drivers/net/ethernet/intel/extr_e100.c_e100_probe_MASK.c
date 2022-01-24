#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int max; } ;
struct TYPE_4__ {TYPE_1__ cbs; } ;
struct nic {int msg_enable; scalar_t__ mac; int* eeprom; int /*<<< orphan*/  csr; struct net_device* netdev; int /*<<< orphan*/  cbs_pool; TYPE_2__ params; struct pci_dev* pdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  mdio_ctrl; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  features; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  priv_flags; } ;
struct csr {int dummy; } ;
struct cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  E100_NAPI_WEIGHT ; 
 int /*<<< orphan*/  E100_WATCHDOG_PERIOD ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IFF_SUPP_NOFCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  NETIF_F_RXALL ; 
 int /*<<< orphan*/  NETIF_F_RXFCS ; 
 int /*<<< orphan*/  NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nic*) ; 
 int FUNC7 (struct nic*) ; 
 int /*<<< orphan*/  e100_ethtool_ops ; 
 int /*<<< orphan*/  FUNC8 (struct nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct nic*) ; 
 int /*<<< orphan*/  e100_netdev_ops ; 
 int /*<<< orphan*/  FUNC11 (struct nic*) ; 
 int /*<<< orphan*/  e100_poll ; 
 int /*<<< orphan*/  e100_tx_timeout_task ; 
 int /*<<< orphan*/  e100_watchdog ; 
 int /*<<< orphan*/  eeprom_bad_csum_allow ; 
 size_t eeprom_id ; 
 int eeprom_id_wol ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  ich ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ mac_82558_D101_A4 ; 
 int /*<<< orphan*/  mdio_ctrl_hw ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct nic* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct nic*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct nic*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct pci_dev*,int) ; 
 int FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct net_device*) ; 
 scalar_t__ use_io ; 
 int /*<<< orphan*/  wol_magic ; 

__attribute__((used)) static int FUNC38(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct nic *nic;
	int err;

	if (!(netdev = FUNC3(sizeof(struct nic))))
		return -ENOMEM;

	netdev->hw_features |= NETIF_F_RXFCS;
	netdev->priv_flags |= IFF_SUPP_NOFCS;
	netdev->hw_features |= NETIF_F_RXALL;

	netdev->netdev_ops = &e100_netdev_ops;
	netdev->ethtool_ops = &e100_ethtool_ops;
	netdev->watchdog_timeo = E100_WATCHDOG_PERIOD;
	FUNC35(netdev->name, FUNC23(pdev), sizeof(netdev->name) - 1);

	nic = FUNC15(netdev);
	FUNC18(netdev, &nic->napi, e100_poll, E100_NAPI_WEIGHT);
	nic->netdev = netdev;
	nic->pdev = pdev;
	nic->msg_enable = (1 << debug) - 1;
	nic->mdio_ctrl = mdio_ctrl_hw;
	FUNC30(pdev, netdev);

	if ((err = FUNC20(pdev))) {
		FUNC16(nic, probe, nic->netdev, "Cannot enable PCI device, aborting\n");
		goto err_out_free_dev;
	}

	if (!(FUNC27(pdev, 0) & IORESOURCE_MEM)) {
		FUNC16(nic, probe, nic->netdev, "Cannot find proper PCI device base address, aborting\n");
		err = -ENODEV;
		goto err_out_disable_pdev;
	}

	if ((err = FUNC26(pdev, DRV_NAME))) {
		FUNC16(nic, probe, nic->netdev, "Cannot obtain PCI resources, aborting\n");
		goto err_out_disable_pdev;
	}

	if ((err = FUNC29(pdev, FUNC0(32)))) {
		FUNC16(nic, probe, nic->netdev, "No usable DMA configuration, aborting\n");
		goto err_out_free_res;
	}

	FUNC2(netdev, &pdev->dev);

	if (use_io)
		FUNC17(nic, probe, nic->netdev, "using i/o access mode\n");

	nic->csr = FUNC21(pdev, (use_io ? 1 : 0), sizeof(struct csr));
	if (!nic->csr) {
		FUNC16(nic, probe, nic->netdev, "Cannot map device registers, aborting\n");
		err = -ENOMEM;
		goto err_out_free_res;
	}

	if (ent->driver_data)
		nic->flags |= ich;
	else
		nic->flags &= ~ich;

	FUNC9(nic);

	/* D100 MAC doesn't allow rx of vlan packets with normal MTU */
	if (nic->mac < mac_82558_D101_A4)
		netdev->features |= NETIF_F_VLAN_CHALLENGED;

	/* locks must be initialized before calling hw_reset */
	FUNC33(&nic->cb_lock);
	FUNC33(&nic->cmd_lock);
	FUNC33(&nic->mdio_lock);

	/* Reset the device before pci_set_master() in case device is in some
	 * funky state and has an interrupt pending - hint: we don't have the
	 * interrupt handler registered yet. */
	FUNC10(nic);

	FUNC31(pdev);

	FUNC36(&nic->watchdog, e100_watchdog, 0);

	FUNC1(&nic->tx_timeout_task, e100_tx_timeout_task);

	if ((err = FUNC6(nic))) {
		FUNC16(nic, probe, nic->netdev, "Cannot alloc driver memory, aborting\n");
		goto err_out_iounmap;
	}

	if ((err = FUNC7(nic)))
		goto err_out_free;

	FUNC11(nic);

	FUNC14(netdev->dev_addr, nic->eeprom, ETH_ALEN);
	if (!FUNC13(netdev->dev_addr)) {
		if (!eeprom_bad_csum_allow) {
			FUNC16(nic, probe, nic->netdev, "Invalid MAC address from EEPROM, aborting\n");
			err = -EAGAIN;
			goto err_out_free;
		} else {
			FUNC16(nic, probe, nic->netdev, "Invalid MAC address from EEPROM, you MUST configure one.\n");
		}
	}

	/* Wol magic packet can be enabled from eeprom */
	if ((nic->mac >= mac_82558_D101_A4) &&
	   (nic->eeprom[eeprom_id] & eeprom_id_wol)) {
		nic->flags |= wol_magic;
		FUNC4(&pdev->dev, true);
	}

	/* ack any pending wake events, disable PME */
	FUNC24(pdev, false);

	FUNC34(netdev->name, "eth%d");
	if ((err = FUNC32(netdev))) {
		FUNC16(nic, probe, nic->netdev, "Cannot register net device, aborting\n");
		goto err_out_free;
	}
	nic->cbs_pool = FUNC5(netdev->name,
			   &nic->pdev->dev,
			   nic->params.cbs.max * sizeof(struct cb),
			   sizeof(u32),
			   0);
	if (!nic->cbs_pool) {
		FUNC16(nic, probe, nic->netdev, "Cannot create DMA pool, aborting\n");
		err = -ENOMEM;
		goto err_out_pool;
	}
	FUNC17(nic, probe, nic->netdev,
		   "addr 0x%llx, irq %d, MAC addr %pM\n",
		   (unsigned long long)FUNC28(pdev, use_io ? 1 : 0),
		   pdev->irq, netdev->dev_addr);

	return 0;

err_out_pool:
	FUNC37(netdev);
err_out_free:
	FUNC8(nic);
err_out_iounmap:
	FUNC22(pdev, nic->csr);
err_out_free_res:
	FUNC25(pdev);
err_out_disable_pdev:
	FUNC19(pdev);
err_out_free_dev:
	FUNC12(netdev);
	return err;
}