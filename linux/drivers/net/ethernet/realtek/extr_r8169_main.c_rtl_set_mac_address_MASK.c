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
struct rtl8169_private {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,void*) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct rtl8169_private *tp = FUNC1(dev);
	struct device *d = FUNC6(tp);
	int ret;

	ret = FUNC0(dev, p);
	if (ret)
		return ret;

	FUNC3(d);

	if (FUNC2(d))
		FUNC5(tp, dev->dev_addr);

	FUNC4(d);

	return 0;
}