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
typedef  int u32 ;
struct qlcnic_adapter {int portnum; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLCNIC_WOL_CONFIG ; 
 int /*<<< orphan*/  QLCNIC_WOL_CONFIG_NV ; 
 int FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int WAKE_MAGIC ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct qlcnic_adapter *adapter = FUNC2(dev);
	u32 wol_cfg;
	int err = 0;

	if (FUNC3(adapter))
		return -EOPNOTSUPP;
	if (wol->wolopts & ~WAKE_MAGIC)
		return -EINVAL;

	wol_cfg = FUNC0(adapter, QLCNIC_WOL_CONFIG_NV, &err);
	if (err == -EIO)
		return err;
	if (!(wol_cfg & (1 << adapter->portnum)))
		return -EOPNOTSUPP;

	wol_cfg = FUNC0(adapter, QLCNIC_WOL_CONFIG, &err);
	if (err == -EIO)
		return err;
	if (wol->wolopts & WAKE_MAGIC)
		wol_cfg |= 1UL << adapter->portnum;
	else
		wol_cfg &= ~(1UL << adapter->portnum);

	FUNC1(adapter, QLCNIC_WOL_CONFIG, wol_cfg);

	return 0;
}