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
struct qlcnic_recv_context {int dummy; } ;
struct TYPE_2__ {void* rx_packets; void* rx_time_us; int /*<<< orphan*/  type; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_time_us; } ;
struct qlcnic_hardware_context {TYPE_1__ coal; } ;
struct qlcnic_adapter {int /*<<< orphan*/  stats; int /*<<< orphan*/  recv_ctx; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* QLCNIC_DEF_INTR_COALESCE_RX_PACKETS ; 
 void* QLCNIC_DEF_INTR_COALESCE_RX_TIME_US ; 
 int /*<<< orphan*/  QLCNIC_DEF_INTR_COALESCE_TX_PACKETS ; 
 int /*<<< orphan*/  QLCNIC_DEF_INTR_COALESCE_TX_TIME_US ; 
 int /*<<< orphan*/  QLCNIC_INTR_COAL_TYPE_RX ; 
 int /*<<< orphan*/  QLCNIC_INTR_COAL_TYPE_RX_TX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err = 0;

	adapter->recv_ctx = FUNC0(sizeof(struct qlcnic_recv_context),
				GFP_KERNEL);
	if (!adapter->recv_ctx) {
		err = -ENOMEM;
		goto err_out;
	}

	if (FUNC2(adapter)) {
		ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX_TX;
		ahw->coal.tx_time_us = QLCNIC_DEF_INTR_COALESCE_TX_TIME_US;
		ahw->coal.tx_packets = QLCNIC_DEF_INTR_COALESCE_TX_PACKETS;
		ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
		ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;
	} else {
		ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX;
		ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
		ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;
	}

	/* clear stats */
	FUNC1(&adapter->stats, 0, sizeof(adapter->stats));
err_out:
	return err;
}