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
struct net_device {int dummy; } ;
struct aq_nic_s {int /*<<< orphan*/  aq_hw; TYPE_3__* aq_hw_ops; TYPE_2__* ndev; } ;
struct aq_nic_cfg_s {int features; int is_lro; int is_vlan_rx_strip; int is_vlan_tx_insert; TYPE_1__* aq_hw_caps; } ;
typedef  int netdev_features_t ;
struct TYPE_6__ {int (* hw_set_offload ) (int /*<<< orphan*/ ,struct aq_nic_cfg_s*) ;} ;
struct TYPE_5__ {int features; } ;
struct TYPE_4__ {int hw_features; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_LRO ; 
 int NETIF_F_NTUPLE ; 
 int NETIF_F_RXCSUM ; 
 int FUNC0 (struct aq_nic_s*) ; 
 int FUNC1 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct aq_nic_cfg_s* FUNC4 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct aq_nic_cfg_s*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev,
				netdev_features_t features)
{
	bool is_vlan_rx_strip = !!(features & NETIF_F_HW_VLAN_CTAG_RX);
	bool is_vlan_tx_insert = !!(features & NETIF_F_HW_VLAN_CTAG_TX);
	struct aq_nic_s *aq_nic = FUNC5(ndev);
	bool need_ndev_restart = false;
	struct aq_nic_cfg_s *aq_cfg;
	bool is_lro = false;
	int err = 0;

	aq_cfg = FUNC4(aq_nic);

	if (!(features & NETIF_F_NTUPLE)) {
		if (aq_nic->ndev->features & NETIF_F_NTUPLE) {
			err = FUNC0(aq_nic);
			if (FUNC8(err))
				goto err_exit;
		}
	}
	if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER)) {
		if (aq_nic->ndev->features & NETIF_F_HW_VLAN_CTAG_FILTER) {
			err = FUNC1(aq_nic);
			if (FUNC8(err))
				goto err_exit;
		}
	}

	aq_cfg->features = features;

	if (aq_cfg->aq_hw_caps->hw_features & NETIF_F_LRO) {
		is_lro = features & NETIF_F_LRO;

		if (aq_cfg->is_lro != is_lro) {
			aq_cfg->is_lro = is_lro;
			need_ndev_restart = true;
		}
	}

	if ((aq_nic->ndev->features ^ features) & NETIF_F_RXCSUM) {
		err = aq_nic->aq_hw_ops->hw_set_offload(aq_nic->aq_hw,
							aq_cfg);

		if (FUNC8(err))
			goto err_exit;
	}

	if (aq_cfg->is_vlan_rx_strip != is_vlan_rx_strip) {
		aq_cfg->is_vlan_rx_strip = is_vlan_rx_strip;
		need_ndev_restart = true;
	}
	if (aq_cfg->is_vlan_tx_insert != is_vlan_tx_insert) {
		aq_cfg->is_vlan_tx_insert = is_vlan_tx_insert;
		need_ndev_restart = true;
	}

	if (need_ndev_restart && FUNC6(ndev)) {
		FUNC2(ndev);
		FUNC3(ndev);
	}

err_exit:
	return err;
}