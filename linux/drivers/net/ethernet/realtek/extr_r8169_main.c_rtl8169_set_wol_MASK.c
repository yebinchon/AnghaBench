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
struct rtl8169_private {int saved_wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int WAKE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 struct device* FUNC7 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct rtl8169_private *tp = FUNC1(dev);
	struct device *d = FUNC7(tp);

	if (wol->wolopts & ~WAKE_ANY)
		return -EINVAL;

	FUNC3(d);

	FUNC5(tp);

	tp->saved_wolopts = wol->wolopts;

	if (FUNC2(d))
		FUNC0(tp, tp->saved_wolopts);

	FUNC6(tp);

	FUNC4(d);

	return 0;
}