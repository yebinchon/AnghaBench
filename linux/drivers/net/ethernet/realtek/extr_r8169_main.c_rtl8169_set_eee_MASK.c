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
struct rtl8169_private {int /*<<< orphan*/  phydev; } ;
struct net_device {TYPE_1__* phydev; } ;
struct ethtool_eee {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ duplex; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 struct device* FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_eee *data)
{
	struct rtl8169_private *tp = FUNC0(dev);
	struct device *d = FUNC6(tp);
	int ret;

	if (!FUNC5(tp))
		return -EOPNOTSUPP;

	FUNC3(d);

	if (!FUNC2(d)) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	if (dev->phydev->autoneg == AUTONEG_DISABLE ||
	    dev->phydev->duplex != DUPLEX_FULL) {
		ret = -EPROTONOSUPPORT;
		goto out;
	}

	ret = FUNC1(tp->phydev, data);
out:
	FUNC4(d);
	return ret;
}