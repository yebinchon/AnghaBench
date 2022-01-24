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
struct net_device {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct aq_nic_s {size_t aq_vecs; int /*<<< orphan*/ * aq_vec; } ;
struct aq_nic_cfg_s {size_t vecs; void* txds; void* rxds; struct aq_hw_caps_s* aq_hw_caps; } ;
struct aq_hw_caps_s {int /*<<< orphan*/  txds_max; int /*<<< orphan*/  txds_min; int /*<<< orphan*/  rxds_max; int /*<<< orphan*/  rxds_min; } ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AQ_HW_RXD_MULTIPLE ; 
 int /*<<< orphan*/  AQ_HW_TXD_MULTIPLE ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct aq_nic_s*) ; 
 struct aq_nic_cfg_s* FUNC2 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_nic_s*,size_t,struct aq_nic_cfg_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 struct aq_nic_s* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev,
			    struct ethtool_ringparam *ring)
{
	int err = 0;
	bool ndev_running = false;
	struct aq_nic_s *aq_nic = FUNC8(ndev);
	struct aq_nic_cfg_s *aq_nic_cfg = FUNC2(aq_nic);
	const struct aq_hw_caps_s *hw_caps = aq_nic_cfg->aq_hw_caps;

	if (ring->rx_mini_pending || ring->rx_jumbo_pending) {
		err = -EOPNOTSUPP;
		goto err_exit;
	}

	if (FUNC9(ndev)) {
		ndev_running = true;
		FUNC4(ndev);
	}

	FUNC1(aq_nic);

	aq_nic_cfg->rxds = FUNC6(ring->rx_pending, hw_caps->rxds_min);
	aq_nic_cfg->rxds = FUNC7(aq_nic_cfg->rxds, hw_caps->rxds_max);
	aq_nic_cfg->rxds = FUNC0(aq_nic_cfg->rxds, AQ_HW_RXD_MULTIPLE);

	aq_nic_cfg->txds = FUNC6(ring->tx_pending, hw_caps->txds_min);
	aq_nic_cfg->txds = FUNC7(aq_nic_cfg->txds, hw_caps->txds_max);
	aq_nic_cfg->txds = FUNC0(aq_nic_cfg->txds, AQ_HW_TXD_MULTIPLE);

	for (aq_nic->aq_vecs = 0; aq_nic->aq_vecs < aq_nic_cfg->vecs;
	     aq_nic->aq_vecs++) {
		aq_nic->aq_vec[aq_nic->aq_vecs] =
		    FUNC3(aq_nic, aq_nic->aq_vecs, aq_nic_cfg);
		if (FUNC10(!aq_nic->aq_vec[aq_nic->aq_vecs])) {
			err = -ENOMEM;
			goto err_exit;
		}
	}
	if (ndev_running)
		err = FUNC5(ndev, NULL);

err_exit:
	return err;
}