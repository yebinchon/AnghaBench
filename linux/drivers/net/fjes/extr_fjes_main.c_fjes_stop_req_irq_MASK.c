#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buffer_unshare_reserve_bit; } ;
struct fjes_hw {int /*<<< orphan*/  epstop_task; int /*<<< orphan*/  epstop_req_bit; int /*<<< orphan*/  txrx_stop_req_bit; int /*<<< orphan*/  rx_status_lock; TYPE_5__* ep_shm_info; TYPE_1__ hw_info; } ;
struct fjes_adapter {int /*<<< orphan*/  control_wq; int /*<<< orphan*/  unshare_watch_task; int /*<<< orphan*/  unshare_watch_bitmask; struct fjes_hw hw; } ;
typedef  enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;
struct TYPE_9__ {TYPE_3__* info; } ;
struct TYPE_10__ {TYPE_4__ tx; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_status; } ;
struct TYPE_8__ {TYPE_2__ v1i; } ;

/* Variables and functions */
#define  EP_PARTNER_COMPLETE 131 
#define  EP_PARTNER_SHARED 130 
#define  EP_PARTNER_UNSHARE 129 
#define  EP_PARTNER_WAITING 128 
 int /*<<< orphan*/  FJES_RX_STOP_REQ_DONE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fjes_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct fjes_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fjes_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct fjes_adapter *adapter, int src_epid)
{
	struct fjes_hw *hw = &adapter->hw;
	enum ep_partner_status status;
	unsigned long flags;

	FUNC3(src_epid, &hw->hw_info.buffer_unshare_reserve_bit);

	status = FUNC1(hw, src_epid);
	FUNC7(hw, src_epid, status);
	switch (status) {
	case EP_PARTNER_WAITING:
		FUNC4(&hw->rx_status_lock, flags);
		hw->ep_shm_info[src_epid].tx.info->v1i.rx_status |=
				FJES_RX_STOP_REQ_DONE;
		FUNC5(&hw->rx_status_lock, flags);
		FUNC0(src_epid, &hw->txrx_stop_req_bit);
		/* fall through */
	case EP_PARTNER_UNSHARE:
	case EP_PARTNER_COMPLETE:
	default:
		FUNC3(src_epid, &adapter->unshare_watch_bitmask);
		if (!FUNC8(&adapter->unshare_watch_task))
			FUNC2(adapter->control_wq,
				   &adapter->unshare_watch_task);
		break;
	case EP_PARTNER_SHARED:
		FUNC3(src_epid, &hw->epstop_req_bit);

		if (!FUNC8(&hw->epstop_task))
			FUNC2(adapter->control_wq, &hw->epstop_task);
		break;
	}
	FUNC6(hw, src_epid);
}