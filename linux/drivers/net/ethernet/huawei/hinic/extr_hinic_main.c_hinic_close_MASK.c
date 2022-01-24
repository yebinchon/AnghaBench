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
struct net_device {int dummy; } ;
struct hinic_dev {unsigned int flags; int /*<<< orphan*/  hwdev; int /*<<< orphan*/  rss_tmpl_idx; int /*<<< orphan*/  mgmt_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_FUNC_PORT_DISABLE ; 
 unsigned int HINIC_INTF_UP ; 
 int /*<<< orphan*/  HINIC_PORT_DISABLE ; 
 int HINIC_RSS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 struct hinic_dev* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hinic_dev*) ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev)
{
	struct hinic_dev *nic_dev = FUNC8(netdev);
	unsigned int flags;
	int err;

	FUNC0(&nic_dev->mgmt_lock);

	flags = nic_dev->flags;
	nic_dev->flags &= ~HINIC_INTF_UP;

	FUNC9(netdev);
	FUNC12(netdev);

	FUNC14(nic_dev);

	FUNC13(&nic_dev->mgmt_lock);

	err = FUNC4(nic_dev, HINIC_FUNC_PORT_DISABLE);
	if (err) {
		FUNC10(nic_dev, drv, netdev,
			  "Failed to set func port state\n");
		nic_dev->flags |= (flags & HINIC_INTF_UP);
		return err;
	}

	err = FUNC5(nic_dev, HINIC_PORT_DISABLE);
	if (err) {
		FUNC10(nic_dev, drv, netdev, "Failed to set port state\n");
		nic_dev->flags |= (flags & HINIC_INTF_UP);
		return err;
	}

	if (nic_dev->flags & HINIC_RSS_ENABLE) {
		FUNC6(nic_dev);
		FUNC7(nic_dev, nic_dev->rss_tmpl_idx);
	}

	FUNC1(nic_dev);
	FUNC2(nic_dev);

	if (flags & HINIC_INTF_UP)
		FUNC3(nic_dev->hwdev);

	FUNC11(nic_dev, drv, netdev, "HINIC_INTF is DOWN\n");
	return 0;
}