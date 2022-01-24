#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; int /*<<< orphan*/  dev_addr; } ;
struct fjes_hw {int max_epid; int my_epid; int /*<<< orphan*/  rx_status_lock; TYPE_3__* ep_shm_info; } ;
struct fjes_adapter {int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_stall_task; struct fjes_hw hw; } ;
struct TYPE_8__ {TYPE_2__* info; } ;
struct TYPE_7__ {TYPE_4__ tx; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_status; } ;
struct TYPE_6__ {TYPE_1__ v1i; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FJES_RX_MTU_CHANGING_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int* fjes_support_mtu ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fjes_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev, int new_mtu)
{
	struct fjes_adapter *adapter = FUNC6(netdev);
	bool running = FUNC9(netdev);
	struct fjes_hw *hw = &adapter->hw;
	unsigned long flags;
	int ret = -EINVAL;
	int idx, epidx;

	for (idx = 0; fjes_support_mtu[idx] != 0; idx++) {
		if (new_mtu <= fjes_support_mtu[idx]) {
			new_mtu = fjes_support_mtu[idx];
			if (new_mtu == netdev->mtu)
				return 0;

			ret = 0;
			break;
		}
	}

	if (ret)
		return ret;

	if (running) {
		FUNC12(&hw->rx_status_lock, flags);
		for (epidx = 0; epidx < hw->max_epid; epidx++) {
			if (epidx == hw->my_epid)
				continue;
			hw->ep_shm_info[epidx].tx.info->v1i.rx_status &=
				~FJES_RX_MTU_CHANGING_DONE;
		}
		FUNC13(&hw->rx_status_lock, flags);

		FUNC10(netdev);
		FUNC7(netdev);
		FUNC0(&adapter->tx_stall_task);
		FUNC3(&adapter->napi);

		FUNC2(1000);

		FUNC10(netdev);
	}

	netdev->mtu = new_mtu;

	if (running) {
		for (epidx = 0; epidx < hw->max_epid; epidx++) {
			if (epidx == hw->my_epid)
				continue;

			FUNC12(&hw->rx_status_lock, flags);
			FUNC1(&hw->ep_shm_info[epidx].tx,
					    netdev->dev_addr,
					    netdev->mtu);

			hw->ep_shm_info[epidx].tx.info->v1i.rx_status |=
				FJES_RX_MTU_CHANGING_DONE;
			FUNC13(&hw->rx_status_lock, flags);
		}

		FUNC11(netdev);
		FUNC8(netdev);
		FUNC4(&adapter->napi);
		FUNC5(&adapter->napi);
	}

	return ret;
}