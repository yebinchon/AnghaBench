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
typedef  int /*<<< orphan*/  u8 ;
struct rtl8169_private {struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	struct net_device *dev = tp->dev;
	u8 *mac_addr = dev->dev_addr;
	int rc;

	rc = FUNC2(FUNC7(tp), mac_addr);
	if (!rc)
		goto done;

	FUNC5(tp, mac_addr);
	if (FUNC3(mac_addr))
		goto done;

	FUNC6(tp, mac_addr, MAC0);
	if (FUNC3(mac_addr))
		goto done;

	FUNC1(dev);
	FUNC0(FUNC7(tp), "can't read MAC address, setting random one\n");
done:
	FUNC4(tp, mac_addr);
}