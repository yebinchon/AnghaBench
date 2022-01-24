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
struct net_device {int dummy; } ;
struct fjes_hw {int max_epid; int my_epid; int /*<<< orphan*/  epstop_task; int /*<<< orphan*/  update_zone_task; int /*<<< orphan*/  rx_status_lock; TYPE_4__* ep_shm_info; } ;
struct fjes_adapter {int /*<<< orphan*/  tx_stall_task; int /*<<< orphan*/  raise_intr_rxdata_task; scalar_t__ unshare_watch_bitmask; int /*<<< orphan*/  unshare_watch_task; int /*<<< orphan*/  interrupt_watch_task; struct fjes_hw hw; int /*<<< orphan*/  napi; } ;
struct TYPE_7__ {TYPE_2__* info; } ;
struct TYPE_8__ {TYPE_3__ tx; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_status; } ;
struct TYPE_6__ {TYPE_1__ v1i; } ;

/* Variables and functions */
 scalar_t__ EP_PARTNER_SHARED ; 
 int /*<<< orphan*/  FJES_RX_POLL_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fjes_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct fjes_adapter*) ; 
 scalar_t__ FUNC4 (struct fjes_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct fjes_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev)
{
	struct fjes_adapter *adapter = FUNC8(netdev);
	struct fjes_hw *hw = &adapter->hw;
	unsigned long flags;
	int epidx;

	FUNC10(netdev);
	FUNC9(netdev);

	FUNC5(hw);

	FUNC7(&adapter->napi);

	FUNC11(&hw->rx_status_lock, flags);
	for (epidx = 0; epidx < hw->max_epid; epidx++) {
		if (epidx == hw->my_epid)
			continue;

		if (FUNC4(hw, epidx) ==
		    EP_PARTNER_SHARED)
			adapter->hw.ep_shm_info[epidx]
				   .tx.info->v1i.rx_status &=
				~FJES_RX_POLL_WORK;
	}
	FUNC12(&hw->rx_status_lock, flags);

	FUNC2(adapter);

	FUNC0(&adapter->interrupt_watch_task);
	FUNC1(&adapter->unshare_watch_task);
	adapter->unshare_watch_bitmask = 0;
	FUNC1(&adapter->raise_intr_rxdata_task);
	FUNC1(&adapter->tx_stall_task);

	FUNC1(&hw->update_zone_task);
	FUNC1(&hw->epstop_task);

	FUNC6(hw);

	FUNC3(adapter);

	return 0;
}