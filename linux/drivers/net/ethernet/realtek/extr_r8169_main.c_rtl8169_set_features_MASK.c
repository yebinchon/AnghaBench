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
struct rtl8169_private {int /*<<< orphan*/  cp_cmd; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int AcceptErr ; 
 int AcceptRunt ; 
 int /*<<< orphan*/  CPlusCmd ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXALL ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int RX_VLAN_8125 ; 
 int /*<<< orphan*/  RxChkSum ; 
 int /*<<< orphan*/  RxConfig ; 
 int /*<<< orphan*/  RxVlan ; 
 struct rtl8169_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				netdev_features_t features)
{
	struct rtl8169_private *tp = FUNC4(dev);
	u32 rx_config;

	FUNC6(tp);

	rx_config = FUNC1(tp, RxConfig);
	if (features & NETIF_F_RXALL)
		rx_config |= (AcceptErr | AcceptRunt);
	else
		rx_config &= ~(AcceptErr | AcceptRunt);

	if (FUNC5(tp)) {
		if (features & NETIF_F_HW_VLAN_CTAG_RX)
			rx_config |= RX_VLAN_8125;
		else
			rx_config &= ~RX_VLAN_8125;
	}

	FUNC3(tp, RxConfig, rx_config);

	if (features & NETIF_F_RXCSUM)
		tp->cp_cmd |= RxChkSum;
	else
		tp->cp_cmd &= ~RxChkSum;

	if (!FUNC5(tp)) {
		if (features & NETIF_F_HW_VLAN_CTAG_RX)
			tp->cp_cmd |= RxVlan;
		else
			tp->cp_cmd &= ~RxVlan;
	}

	FUNC2(tp, CPlusCmd, tp->cp_cmd);
	FUNC0(tp, CPlusCmd);

	FUNC7(tp);

	return 0;
}