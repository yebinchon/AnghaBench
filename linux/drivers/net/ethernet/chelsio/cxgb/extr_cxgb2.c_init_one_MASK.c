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
struct port_info {struct net_device* dev; } ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int if_port; unsigned long mem_start; unsigned long mem_end; int hw_features; int features; int hard_header_len; int /*<<< orphan*/  name; scalar_t__ max_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; struct adapter* ml_priv; int /*<<< orphan*/  irq; } ;
struct cpl_tx_pkt_lso {int dummy; } ;
struct cpl_tx_pkt {int dummy; } ;
struct board_info {int port_number; int board; int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  width; int /*<<< orphan*/  speed; scalar_t__ is_pcix; } ;
struct TYPE_4__ {TYPE_1__ pci; int /*<<< orphan*/  chip_revision; } ;
struct adapter {unsigned long mmio_len; struct port_info* port; scalar_t__ regs; int /*<<< orphan*/  t1powersave; TYPE_2__ params; int /*<<< orphan*/  name; int /*<<< orphan*/  registered_device_map; int /*<<< orphan*/  napi; int /*<<< orphan*/  stats_update_task; int /*<<< orphan*/  ext_intr_handler_task; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  tpi_lock; int /*<<< orphan*/  msg_enable; struct pci_dev* pdev; } ;

/* Variables and functions */
#define  CHBT_BOARD_CHN204 132 
#define  CHBT_BOARD_CHT110 131 
#define  CHBT_BOARD_CHT210 130 
#define  CHBT_BOARD_N110 129 
#define  CHBT_BOARD_N210 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_DESCRIPTION ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ ETH_DATA_LEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  HCLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  LCLOCK ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 scalar_t__ PM3393_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ VSC7326_MAX_MTU ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (int) ; 
 int /*<<< orphan*/  cxgb_netdev_ops ; 
 int /*<<< orphan*/  dflt_msg_enable ; 
 int /*<<< orphan*/  ext_intr_task ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  mac_stats_task ; 
 struct adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  t1_ethtool_ops ; 
 int /*<<< orphan*/  FUNC32 (struct adapter*) ; 
 struct board_info* FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (struct adapter*,struct board_info const*,TYPE_2__*) ; 
 scalar_t__ FUNC35 (struct adapter*,struct board_info const*) ; 
 scalar_t__ FUNC36 (struct adapter*) ; 
 int /*<<< orphan*/  t1_poll ; 
 scalar_t__ t1powersave ; 
 scalar_t__ FUNC37 (struct adapter*) ; 

__attribute__((used)) static int FUNC38(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int i, err, pci_using_dac = 0;
	unsigned long mmio_start, mmio_len;
	const struct board_info *bi;
	struct adapter *adapter = NULL;
	struct port_info *pi;

	FUNC27("%s - version %s\n", DRV_DESCRIPTION, DRV_VERSION);

	err = FUNC14(pdev);
	if (err)
		return err;

	if (!(FUNC18(pdev, 0) & IORESOURCE_MEM)) {
		FUNC25("%s: cannot find PCI device memory base address\n",
		       FUNC15(pdev));
		err = -ENODEV;
		goto out_disable_pdev;
	}

	if (!FUNC22(pdev, FUNC0(64))) {
		pci_using_dac = 1;

		if (FUNC21(pdev, FUNC0(64))) {
			FUNC25("%s: unable to obtain 64-bit DMA for "
			       "consistent allocations\n", FUNC15(pdev));
			err = -ENODEV;
			goto out_disable_pdev;
		}

	} else if ((err = FUNC22(pdev, FUNC0(32))) != 0) {
		FUNC25("%s: no usable DMA configuration\n", FUNC15(pdev));
		goto out_disable_pdev;
	}

	err = FUNC17(pdev, DRV_NAME);
	if (err) {
		FUNC25("%s: cannot obtain PCI resources\n", FUNC15(pdev));
		goto out_disable_pdev;
	}

	FUNC24(pdev);

	mmio_start = FUNC20(pdev, 0);
	mmio_len = FUNC19(pdev, 0);
	bi = FUNC33(ent->driver_data);

	for (i = 0; i < bi->port_number; ++i) {
		struct net_device *netdev;

		netdev = FUNC5(adapter ? 0 : sizeof(*adapter));
		if (!netdev) {
			err = -ENOMEM;
			goto out_free_dev;
		}

		FUNC3(netdev, &pdev->dev);

		if (!adapter) {
			adapter = FUNC10(netdev);
			adapter->pdev = pdev;
			adapter->port[0].dev = netdev;  /* so we don't leak it */

			adapter->regs = FUNC7(mmio_start, mmio_len);
			if (!adapter->regs) {
				FUNC25("%s: cannot map device registers\n",
				       FUNC15(pdev));
				err = -ENOMEM;
				goto out_free_dev;
			}

			if (FUNC34(adapter, bi, &adapter->params)) {
				err = -ENODEV;	  /* Can't handle this chip rev */
				goto out_free_dev;
			}

			adapter->name = FUNC15(pdev);
			adapter->msg_enable = dflt_msg_enable;
			adapter->mmio_len = mmio_len;

			FUNC30(&adapter->tpi_lock);
			FUNC30(&adapter->work_lock);
			FUNC30(&adapter->async_lock);
			FUNC30(&adapter->mac_lock);

			FUNC2(&adapter->ext_intr_handler_task,
				  ext_intr_task);
			FUNC1(&adapter->stats_update_task,
					  mac_stats_task);

			FUNC23(pdev, netdev);
		}

		pi = &adapter->port[i];
		pi->dev = netdev;
		FUNC11(netdev);
		netdev->irq = pdev->irq;
		netdev->if_port = i;
		netdev->mem_start = mmio_start;
		netdev->mem_end = mmio_start + mmio_len - 1;
		netdev->ml_priv = adapter;
		netdev->hw_features |= NETIF_F_SG | NETIF_F_IP_CSUM |
			NETIF_F_RXCSUM;
		netdev->features |= NETIF_F_SG | NETIF_F_IP_CSUM |
			NETIF_F_RXCSUM | NETIF_F_LLTX;

		if (pci_using_dac)
			netdev->features |= NETIF_F_HIGHDMA;
		if (FUNC37(adapter)) {
			netdev->features |=
				NETIF_F_HW_VLAN_CTAG_TX |
				NETIF_F_HW_VLAN_CTAG_RX;
			netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;

			/* T204: disable TSO */
			if (!(FUNC9(adapter)) || bi->port_number != 4) {
				netdev->hw_features |= NETIF_F_TSO;
				netdev->features |= NETIF_F_TSO;
			}
		}

		netdev->netdev_ops = &cxgb_netdev_ops;
		netdev->hard_header_len += (netdev->hw_features & NETIF_F_TSO) ?
			sizeof(struct cpl_tx_pkt_lso) : sizeof(struct cpl_tx_pkt);

		FUNC12(netdev, &adapter->napi, t1_poll, 64);

		netdev->ethtool_ops = &t1_ethtool_ops;

		switch (bi->board) {
		case CHBT_BOARD_CHT110:
		case CHBT_BOARD_N110:
		case CHBT_BOARD_N210:
		case CHBT_BOARD_CHT210:
			netdev->max_mtu = PM3393_MAX_FRAME_SIZE -
					  (ETH_HLEN + ETH_FCS_LEN);
			break;
		case CHBT_BOARD_CHN204:
			netdev->max_mtu = VSC7326_MAX_MTU;
			break;
		default:
			netdev->max_mtu = ETH_DATA_LEN;
			break;
		}
	}

	if (FUNC35(adapter, bi) < 0) {
		err = -ENODEV;
		goto out_free_dev;
	}

	/*
	 * The card is now ready to go.  If any errors occur during device
	 * registration we do not fail the whole card but rather proceed only
	 * with the ports we manage to register successfully.  However we must
	 * register at least one net device.
	 */
	for (i = 0; i < bi->port_number; ++i) {
		err = FUNC29(adapter->port[i].dev);
		if (err)
			FUNC28("%s: cannot register net device %s, skipping\n",
				FUNC15(pdev), adapter->port[i].dev->name);
		else {
			/*
			 * Change the name we use for messages to the name of
			 * the first successfully registered interface.
			 */
			if (!adapter->registered_device_map)
				adapter->name = adapter->port[i].dev->name;

			FUNC4(i, &adapter->registered_device_map);
		}
	}
	if (!adapter->registered_device_map) {
		FUNC25("%s: could not register any net devices\n",
		       FUNC15(pdev));
		goto out_release_adapter_res;
	}

	FUNC26("%s: %s (rev %d), %s %dMHz/%d-bit\n",
		adapter->name, bi->desc, adapter->params.chip_revision,
		adapter->params.pci.is_pcix ? "PCIX" : "PCI",
		adapter->params.pci.speed, adapter->params.pci.width);

	/*
	 * Set the T1B ASIC and memory clocks.
	 */
	if (t1powersave)
		adapter->t1powersave = LCLOCK;	/* HW default is powersave mode. */
	else
		adapter->t1powersave = HCLOCK;
	if (FUNC36(adapter))
		FUNC31(adapter, t1powersave);

	return 0;

out_release_adapter_res:
	FUNC32(adapter);
out_free_dev:
	if (adapter) {
		if (adapter->regs)
			FUNC8(adapter->regs);
		for (i = bi->port_number - 1; i >= 0; --i)
			if (adapter->port[i].dev)
				FUNC6(adapter->port[i].dev);
	}
	FUNC16(pdev);
out_disable_pdev:
	FUNC13(pdev);
	return err;
}