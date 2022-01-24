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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hinic_dev {int /*<<< orphan*/  mgmt_lock; int /*<<< orphan*/  vlan_bitmap; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct hinic_dev*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC3 (struct hinic_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 struct hinic_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, const u8 *addr)
{
	struct hinic_dev *nic_dev = FUNC5(netdev);
	u16 vid = 0;
	int err;

	if (!FUNC4(addr))
		return -EADDRNOTAVAIL;

	FUNC7(nic_dev, drv, netdev, "change mac addr = %02x %02x %02x %02x %02x %02x\n",
		   addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);

	FUNC0(&nic_dev->mgmt_lock);

	do {
		err = FUNC3(nic_dev, netdev->dev_addr, vid);
		if (err) {
			FUNC6(nic_dev, drv, netdev,
				  "Failed to delete mac\n");
			break;
		}

		err = FUNC2(nic_dev, addr, vid);
		if (err) {
			FUNC6(nic_dev, drv, netdev, "Failed to add mac\n");
			break;
		}

		vid = FUNC1(nic_dev->vlan_bitmap, VLAN_N_VID, vid + 1);
	} while (vid != VLAN_N_VID);

	FUNC8(&nic_dev->mgmt_lock);
	return err;
}