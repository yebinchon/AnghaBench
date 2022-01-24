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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int features; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct net_device *dev, struct sk_buff *skb)
{
	struct ethhdr *eth_hdr;
	u16 vid;
	if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
	    !FUNC0(skb, &vid)) {
		eth_hdr = (struct ethhdr *)skb->data;
		FUNC3(skb->data + VLAN_HLEN, eth_hdr, ETH_ALEN * 2);
		FUNC4(skb, VLAN_HLEN);
		FUNC1(skb, FUNC2(ETH_P_8021Q), vid);
	}
}