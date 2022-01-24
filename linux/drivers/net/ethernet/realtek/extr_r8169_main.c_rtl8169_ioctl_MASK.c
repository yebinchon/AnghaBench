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
struct rtl8169_private {int /*<<< orphan*/  phydev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct rtl8169_private *tp = FUNC0(dev);

	if (!FUNC1(dev))
		return -ENODEV;

	return FUNC2(tp->phydev, ifr, cmd);
}