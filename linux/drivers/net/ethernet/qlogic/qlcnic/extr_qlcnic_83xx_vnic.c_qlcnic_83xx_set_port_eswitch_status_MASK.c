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
struct qlcnic_info {int capabilities; int phys_port; } ;
struct qlcnic_adapter {TYPE_1__* eswitch; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_SWITCH_ENABLE ; 
 int QLC_83XX_ESWITCH_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qlcnic_adapter*,struct qlcnic_info*,int) ; 

int FUNC2(struct qlcnic_adapter *adapter,
					int func, int *port_id)
{
	struct qlcnic_info nic_info;
	int err = 0;

	FUNC0(&nic_info, 0, sizeof(struct qlcnic_info));

	err = FUNC1(adapter, &nic_info, func);
	if (err)
		return err;

	if (nic_info.capabilities & QLC_83XX_ESWITCH_CAPABILITY)
		*port_id = nic_info.phys_port;
	else
		err = -EIO;

	if (!err)
		adapter->eswitch[*port_id].flags |= QLCNIC_SWITCH_ENABLE;

	return err;
}