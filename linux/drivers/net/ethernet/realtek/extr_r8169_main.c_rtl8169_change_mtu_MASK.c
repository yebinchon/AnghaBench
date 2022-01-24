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
struct net_device {int mtu; } ;

/* Variables and functions */
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	struct rtl8169_private *tp = FUNC0(dev);

	FUNC2(tp, new_mtu);

	dev->mtu = new_mtu;
	FUNC1(dev);

	return 0;
}