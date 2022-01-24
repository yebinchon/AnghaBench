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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; } ;
struct rtl8169_private {int mac_version; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ ETH_ZLEN ; 
 int GTTCPHO_MAX ; 
 int /*<<< orphan*/  NETIF_F_ALL_TSO ; 
 int /*<<< orphan*/  NETIF_F_CSUM_MASK ; 
#define  RTL_GIGA_MAC_VER_11 131 
#define  RTL_GIGA_MAC_VER_12 130 
#define  RTL_GIGA_MAC_VER_17 129 
#define  RTL_GIGA_MAC_VER_34 128 
 int TCPHO_MAX ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct rtl8169_private*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_features_t FUNC5(struct sk_buff *skb,
						struct net_device *dev,
						netdev_features_t features)
{
	int transport_offset = FUNC3(skb);
	struct rtl8169_private *tp = FUNC0(dev);

	if (FUNC2(skb)) {
		if (transport_offset > GTTCPHO_MAX &&
		    FUNC1(tp))
			features &= ~NETIF_F_ALL_TSO;
	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (skb->len < ETH_ZLEN) {
			switch (tp->mac_version) {
			case RTL_GIGA_MAC_VER_11:
			case RTL_GIGA_MAC_VER_12:
			case RTL_GIGA_MAC_VER_17:
			case RTL_GIGA_MAC_VER_34:
				features &= ~NETIF_F_CSUM_MASK;
				break;
			default:
				break;
			}
		}

		if (transport_offset > TCPHO_MAX &&
		    FUNC1(tp))
			features &= ~NETIF_F_CSUM_MASK;
	}

	return FUNC4(skb, features);
}