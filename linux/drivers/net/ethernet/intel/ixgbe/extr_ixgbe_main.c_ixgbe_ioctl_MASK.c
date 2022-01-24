#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  read_reg; } ;
struct TYPE_5__ {int /*<<< orphan*/  mdio; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct ixgbe_adapter {TYPE_3__ hw; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 130 
#define  SIOCGMIIPHY 129 
#define  SIOCSHWTSTAMP 128 
 int /*<<< orphan*/  FUNC0 (struct ifreq*) ; 
 int FUNC1 (struct ixgbe_adapter*,struct ifreq*) ; 
 int FUNC2 (struct ixgbe_adapter*,struct ifreq*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ifreq *req, int cmd)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);

	switch (cmd) {
	case SIOCSHWTSTAMP:
		return FUNC2(adapter, req);
	case SIOCGHWTSTAMP:
		return FUNC1(adapter, req);
	case SIOCGMIIPHY:
		if (!adapter->hw.phy.ops.read_reg)
			return -EOPNOTSUPP;
		/* fall through */
	default:
		return FUNC3(&adapter->hw.phy.mdio, FUNC0(req), cmd);
	}
}