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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct hinic_port_mac_cmd {scalar_t__ status; int /*<<< orphan*/  mac; scalar_t__ vlan_id; int /*<<< orphan*/  func_idx; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  port_mac_cmd ;
typedef  enum mac_op { ____Placeholder_mac_op } mac_op ;
typedef  enum hinic_port_cmd { ____Placeholder_hinic_port_cmd } hinic_port_cmd ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_hwif*) ; 
 int HINIC_PORT_CMD_DEL_MAC ; 
 int HINIC_PORT_CMD_SET_MAC ; 
 int MAC_SET ; 
 scalar_t__ VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC2 (struct hinic_hwdev*,int,struct hinic_port_mac_cmd*,int,struct hinic_port_mac_cmd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static int FUNC5(struct hinic_dev *nic_dev, const u8 *addr,
		      u16 vlan_id, enum mac_op op)
{
	struct net_device *netdev = nic_dev->netdev;
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	struct hinic_port_mac_cmd port_mac_cmd;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	enum hinic_port_cmd cmd;
	u16 out_size;
	int err;

	if (vlan_id >= VLAN_N_VID) {
		FUNC4(nic_dev, drv, netdev, "Invalid VLAN number\n");
		return -EINVAL;
	}

	if (op == MAC_SET)
		cmd = HINIC_PORT_CMD_SET_MAC;
	else
		cmd = HINIC_PORT_CMD_DEL_MAC;

	port_mac_cmd.func_idx = FUNC0(hwif);
	port_mac_cmd.vlan_id = vlan_id;
	FUNC3(port_mac_cmd.mac, addr, ETH_ALEN);

	err = FUNC2(hwdev, cmd, &port_mac_cmd,
				 sizeof(port_mac_cmd),
				 &port_mac_cmd, &out_size);
	if (err || (out_size != sizeof(port_mac_cmd)) || port_mac_cmd.status) {
		FUNC1(&pdev->dev, "Failed to change MAC, ret = %d\n",
			port_mac_cmd.status);
		return -EFAULT;
	}

	return 0;
}