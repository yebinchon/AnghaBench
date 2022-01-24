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
struct rtl8169_private {int /*<<< orphan*/  saved_wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAKE_ANY ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct rtl8169_private *tp = FUNC0(dev);

	FUNC1(tp);
	wol->supported = WAKE_ANY;
	wol->wolopts = tp->saved_wolopts;
	FUNC2(tp);
}