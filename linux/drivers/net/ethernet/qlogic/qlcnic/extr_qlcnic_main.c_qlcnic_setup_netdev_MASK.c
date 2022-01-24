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
struct qlcnic_adapter {int rx_csum; int /*<<< orphan*/  dcb; int /*<<< orphan*/  drv_sds_rings; int /*<<< orphan*/  drv_tx_rings; TYPE_2__* msix_entries; TYPE_1__* ahw; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int watchdog_timeo; int features; int vlan_features; int hw_enc_features; int hw_features; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  irq; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int capabilities; scalar_t__ mc_enabled; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int NETIF_F_GRO ; 
 int NETIF_F_GSO_UDP_TUNNEL ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_LRO ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  P3P_MAX_MTU ; 
 int /*<<< orphan*/  P3P_MIN_MTU ; 
 int QLCNIC_FW_CAPABILITY_HW_LRO ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int QLCNIC_WATCHDOG_TIMEOUTVALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_ethtool_ops ; 
 int /*<<< orphan*/  qlcnic_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int FUNC7 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_sriov_vf_ethtool_ops ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 int FUNC10 (struct net_device*) ; 

int
FUNC11(struct qlcnic_adapter *adapter, struct net_device *netdev,
		    int pci_using_dac)
{
	int err;
	struct pci_dev *pdev = adapter->pdev;

	adapter->rx_csum = 1;
	adapter->ahw->mc_enabled = 0;
	FUNC6(adapter);

	netdev->netdev_ops	   = &qlcnic_netdev_ops;
	netdev->watchdog_timeo     = QLCNIC_WATCHDOG_TIMEOUTVALUE * HZ;

	FUNC2(netdev, netdev->mtu);

	netdev->ethtool_ops = (FUNC8(adapter)) ?
		&qlcnic_sriov_vf_ethtool_ops : &qlcnic_ethtool_ops;

	netdev->features |= (NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_RXCSUM |
			     NETIF_F_IPV6_CSUM | NETIF_F_GRO |
			     NETIF_F_HW_VLAN_CTAG_RX);
	netdev->vlan_features |= (NETIF_F_SG | NETIF_F_IP_CSUM |
				  NETIF_F_IPV6_CSUM);

	if (FUNC0(adapter)) {
		netdev->features |= (NETIF_F_TSO | NETIF_F_TSO6);
		netdev->vlan_features |= (NETIF_F_TSO | NETIF_F_TSO6);
	}

	if (pci_using_dac) {
		netdev->features |= NETIF_F_HIGHDMA;
		netdev->vlan_features |= NETIF_F_HIGHDMA;
	}

	if (FUNC9(adapter))
		netdev->features |= (NETIF_F_HW_VLAN_CTAG_TX);

	if (FUNC8(adapter))
		netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;

	if (adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_HW_LRO)
		netdev->features |= NETIF_F_LRO;

	if (FUNC5(adapter)) {
		netdev->features |= NETIF_F_GSO_UDP_TUNNEL;

		/* encapsulation Tx offload supported by Adapter */
		netdev->hw_enc_features = NETIF_F_IP_CSUM        |
					  NETIF_F_GSO_UDP_TUNNEL |
					  NETIF_F_TSO            |
					  NETIF_F_TSO6;
	}

	if (FUNC4(adapter))
		netdev->hw_enc_features |= NETIF_F_RXCSUM;

	netdev->hw_features = netdev->features;
	netdev->priv_flags |= IFF_UNICAST_FLT;
	netdev->irq = adapter->msix_entries[0].vector;

	/* MTU range: 68 - 9600 */
	netdev->min_mtu = P3P_MIN_MTU;
	netdev->max_mtu = P3P_MAX_MTU;

	err = FUNC7(adapter, adapter->drv_tx_rings,
					 adapter->drv_sds_rings);
	if (err)
		return err;

	FUNC3(adapter->dcb);

	err = FUNC10(netdev);
	if (err) {
		FUNC1(&pdev->dev, "failed to register net device\n");
		return err;
	}

	return 0;
}