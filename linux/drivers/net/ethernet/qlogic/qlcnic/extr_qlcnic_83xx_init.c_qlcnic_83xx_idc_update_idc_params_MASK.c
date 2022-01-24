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
struct TYPE_2__ {scalar_t__ delay_reset; scalar_t__ collect_dump; scalar_t__ err_code; int /*<<< orphan*/  delay; scalar_t__ quiesce_req; int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; scalar_t__ reset_context; } ;
struct qlcnic_adapter {int /*<<< orphan*/  state; scalar_t__ tx_timeo_cnt; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_83XX_IDC_FW_POLL_DELAY ; 
 int /*<<< orphan*/  QLC_83XX_MODULE_LOADED ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	FUNC2(adapter, 1, 1);
	FUNC1(adapter, 0, 1);
	FUNC3(QLC_83XX_MODULE_LOADED, &adapter->ahw->idc.status);

	ahw->idc.quiesce_req = 0;
	ahw->idc.delay = QLC_83XX_IDC_FW_POLL_DELAY;
	ahw->idc.err_code = 0;
	ahw->idc.collect_dump = 0;
	ahw->reset_context = 0;
	adapter->tx_timeo_cnt = 0;
	ahw->idc.delay_reset = 0;

	FUNC0(__QLCNIC_RESETTING, &adapter->state);
}