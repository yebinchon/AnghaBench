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
struct net_device {int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_6__ {TYPE_2__* share; int /*<<< orphan*/  res_buf; int /*<<< orphan*/  res_buf_size; int /*<<< orphan*/  req_buf; int /*<<< orphan*/  req_buf_size; scalar_t__ buffer_share_bit; int /*<<< orphan*/  lock; } ;
struct fjes_hw {int max_epid; int my_epid; TYPE_3__ hw_info; int /*<<< orphan*/  txrx_stop_req_bit; int /*<<< orphan*/  rx_status_lock; struct ep_share_mem_info* ep_shm_info; } ;
struct fjes_device_command_param {void* share_start; void* res_start; int /*<<< orphan*/  res_len; void* req_start; int /*<<< orphan*/  req_len; } ;
struct fjes_adapter {int force_reset; int open_guard; struct fjes_hw hw; struct net_device* netdev; } ;
struct TYPE_4__ {int com_unregist_buf_exec; } ;
struct ep_share_mem_info {int /*<<< orphan*/  tx; TYPE_1__ ep_stats; } ;
typedef  int /*<<< orphan*/  param ;
struct TYPE_5__ {int /*<<< orphan*/  ep_status; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fjes_hw*,struct fjes_device_command_param*) ; 
 int FUNC3 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fjes_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct fjes_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct fjes_device_command_param param;
	struct ep_share_mem_info *buf_pair;
	struct fjes_hw *hw = &adapter->hw;
	bool reset_flag = false;
	unsigned long flags;
	int result;
	int epidx;

	for (epidx = 0; epidx < hw->max_epid; epidx++) {
		if (epidx == hw->my_epid)
			continue;

		FUNC7(&hw->hw_info.lock);
		result = FUNC5(hw, epidx);
		FUNC8(&hw->hw_info.lock);

		hw->ep_shm_info[epidx].ep_stats.com_unregist_buf_exec += 1;

		if (result)
			reset_flag = true;

		buf_pair = &hw->ep_shm_info[epidx];

		FUNC9(&hw->rx_status_lock, flags);
		FUNC4(&buf_pair->tx,
				    netdev->dev_addr, netdev->mtu);
		FUNC10(&hw->rx_status_lock, flags);

		FUNC1(epidx, &hw->txrx_stop_req_bit);
	}

	if (reset_flag || adapter->force_reset) {
		result = FUNC3(hw);

		adapter->force_reset = false;

		if (result)
			adapter->open_guard = true;

		hw->hw_info.buffer_share_bit = 0;

		FUNC6((void *)&param, 0, sizeof(param));

		param.req_len = hw->hw_info.req_buf_size;
		param.req_start = FUNC0(hw->hw_info.req_buf);
		param.res_len = hw->hw_info.res_buf_size;
		param.res_start = FUNC0(hw->hw_info.res_buf);
		param.share_start = FUNC0(hw->hw_info.share->ep_status);

		FUNC2(hw, &param);
	}
}