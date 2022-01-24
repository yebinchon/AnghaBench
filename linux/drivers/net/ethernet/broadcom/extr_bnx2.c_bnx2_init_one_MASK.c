#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int hw_features; int vlan_features; int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct bnx2 {int flags; int /*<<< orphan*/  regview; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int FUNC1 (struct bnx2*) ; 
 int BNX2_FLAG_CAN_KEEP_VLAN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  MAX_ETHERNET_JUMBO_PACKET_SIZE ; 
 int /*<<< orphan*/  MIN_ETHERNET_PACKET_SIZE ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int NETIF_F_TSO_ECN ; 
 int /*<<< orphan*/  TX_MAX_RINGS ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,char*) ; 
 int /*<<< orphan*/  bnx2_ethtool_ops ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  bnx2_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 TYPE_1__* board_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 scalar_t__ FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int
FUNC20(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	static int version_printed = 0;
	struct net_device *dev;
	struct bnx2 *bp;
	int rc;
	char str[40];

	if (version_printed++ == 0)
		FUNC18("%s", version);

	/* dev zeroed in init_etherdev */
	dev = FUNC2(sizeof(*bp), TX_MAX_RINGS);
	if (!dev)
		return -ENOMEM;

	rc = FUNC5(pdev, dev);
	if (rc < 0)
		goto err_free;

	dev->netdev_ops = &bnx2_netdev_ops;
	dev->watchdog_timeo = TX_TIMEOUT;
	dev->ethtool_ops = &bnx2_ethtool_ops;

	bp = FUNC12(dev);

	FUNC17(pdev, dev);

	/*
	 * In-flight DMA from 1st kernel could continue going in kdump kernel.
	 * New io-page table has been created before bnx2 does reset at open stage.
	 * We have to wait for the in-flight DMA to complete to avoid it look up
	 * into the newly created io-page table.
	 */
	if (FUNC9())
		FUNC6(bp);

	FUNC10(dev->dev_addr, bp->mac_addr, ETH_ALEN);

	dev->hw_features = NETIF_F_IP_CSUM | NETIF_F_SG |
		NETIF_F_TSO | NETIF_F_TSO_ECN |
		NETIF_F_RXHASH | NETIF_F_RXCSUM;

	if (FUNC0(bp) == BNX2_CHIP_5709)
		dev->hw_features |= NETIF_F_IPV6_CSUM | NETIF_F_TSO6;

	dev->vlan_features = dev->hw_features;
	dev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX;
	dev->features |= dev->hw_features;
	dev->priv_flags |= IFF_UNICAST_FLT;
	dev->min_mtu = MIN_ETHERNET_PACKET_SIZE;
	dev->max_mtu = MAX_ETHERNET_JUMBO_PACKET_SIZE;

	if (!(bp->flags & BNX2_FLAG_CAN_KEEP_VLAN))
		dev->hw_features &= ~NETIF_F_HW_VLAN_CTAG_RX;

	if ((rc = FUNC19(dev))) {
		FUNC7(&pdev->dev, "Cannot register net device\n");
		goto error;
	}

	FUNC11(dev, "%s (%c%d) %s found at mem %lx, IRQ %d, "
		    "node addr %pM\n", board_info[ent->driver_data].name,
		    ((FUNC1(bp) & 0xf000) >> 12) + 'A',
		    ((FUNC1(bp) & 0x0ff0) >> 4),
		    FUNC3(bp, str), (long)FUNC16(pdev, 0),
		    pdev->irq, dev->dev_addr);

	return 0;

error:
	FUNC14(pdev, bp->regview);
	FUNC15(pdev);
	FUNC13(pdev);
err_free:
	FUNC4(dev);
	FUNC8(dev);
	return rc;
}