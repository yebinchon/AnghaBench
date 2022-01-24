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
struct TYPE_2__ {void* rx_packets; void* rx_time_us; int /*<<< orphan*/  type; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_time_us; int /*<<< orphan*/  flag; } ;
struct qlcnic_hardware_context {TYPE_1__ coal; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 void* QLCNIC_DEF_INTR_COALESCE_RX_PACKETS ; 
 void* QLCNIC_DEF_INTR_COALESCE_RX_TIME_US ; 
 int /*<<< orphan*/  QLCNIC_DEF_INTR_COALESCE_TX_PACKETS ; 
 int /*<<< orphan*/  QLCNIC_DEF_INTR_COALESCE_TX_TIME_US ; 
 int /*<<< orphan*/  QLCNIC_INTR_COAL_TYPE_RX ; 
 int /*<<< orphan*/  QLCNIC_INTR_COAL_TYPE_RX_TX ; 
 int /*<<< orphan*/  QLCNIC_INTR_DEFAULT ; 
 int FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err;

	/* Initialize interrupt coalesce parameters */
	ahw->coal.flag = QLCNIC_INTR_DEFAULT;

	if (FUNC1(adapter)) {
		ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX_TX;
		ahw->coal.tx_time_us = QLCNIC_DEF_INTR_COALESCE_TX_TIME_US;
		ahw->coal.tx_packets = QLCNIC_DEF_INTR_COALESCE_TX_PACKETS;
		ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
		ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;

		err = FUNC2(adapter);
	} else {
		ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX;
		ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
		ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;

		err = FUNC0(adapter);
	}

	return err;
}