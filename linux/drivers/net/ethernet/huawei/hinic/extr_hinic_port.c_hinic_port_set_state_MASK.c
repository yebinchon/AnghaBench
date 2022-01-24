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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_port_state_cmd {int state; scalar_t__ status; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef  int /*<<< orphan*/  port_state ;
typedef  enum hinic_port_state { ____Placeholder_hinic_port_state } hinic_port_state ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_PORT_CMD_SET_PORT_STATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (struct hinic_hwdev*,int /*<<< orphan*/ ,struct hinic_port_state_cmd*,int,struct hinic_port_state_cmd*,int*) ; 

int FUNC4(struct hinic_dev *nic_dev, enum hinic_port_state state)
{
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	struct hinic_port_state_cmd port_state;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	u16 out_size;
	int err;

	if (!FUNC0(hwif) && !FUNC1(hwif)) {
		FUNC2(&pdev->dev, "unsupported PCI Function type\n");
		return -EINVAL;
	}

	port_state.state = state;

	err = FUNC3(hwdev, HINIC_PORT_CMD_SET_PORT_STATE,
				 &port_state, sizeof(port_state),
				 &port_state, &out_size);
	if (err || (out_size != sizeof(port_state)) || port_state.status) {
		FUNC2(&pdev->dev, "Failed to set port state, ret = %d\n",
			port_state.status);
		return -EFAULT;
	}

	return 0;
}