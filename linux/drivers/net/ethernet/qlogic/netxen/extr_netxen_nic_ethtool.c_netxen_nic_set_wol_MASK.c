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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int portnum; TYPE_1__ ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NETXEN_WOL_CONFIG ; 
 int /*<<< orphan*/  NETXEN_WOL_CONFIG_NV ; 
 int FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int WAKE_MAGIC ; 
 struct netxen_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct netxen_adapter *adapter = FUNC3(dev);
	u32 wol_cfg = 0;

	if (FUNC2(adapter->ahw.revision_id))
		return -EOPNOTSUPP;

	if (wol->wolopts & ~WAKE_MAGIC)
		return -EOPNOTSUPP;

	wol_cfg = FUNC0(adapter, NETXEN_WOL_CONFIG_NV);
	if (!(wol_cfg & (1 << adapter->portnum)))
		return -EOPNOTSUPP;

	wol_cfg = FUNC0(adapter, NETXEN_WOL_CONFIG);
	if (wol->wolopts & WAKE_MAGIC)
		wol_cfg |= 1UL << adapter->portnum;
	else
		wol_cfg &= ~(1UL << adapter->portnum);
	FUNC1(adapter, NETXEN_WOL_CONFIG, wol_cfg);

	return 0;
}