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
struct qlcnic_adapter {TYPE_1__* ahw; scalar_t__ need_fw_reset; } ;
struct TYPE_2__ {int /*<<< orphan*/  mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_TERM ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qlcnic_adapter*,int) ; 
 int FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	int err;

	adapter->need_fw_reset = 0;
	FUNC1(adapter->ahw->mailbox);
	FUNC0(adapter);

	err = FUNC2(adapter, 1);
	if (err)
		return err;

	err = FUNC3(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
	if (err)
		goto err_out_cleanup_bc_intr;

	err = FUNC4(adapter);
	if (err)
		goto err_out_term_channel;

	return 0;

err_out_term_channel:
	FUNC3(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);

err_out_cleanup_bc_intr:
	FUNC2(adapter, 0);
	return err;
}