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
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct net_device {int features; } ;
struct iphdr {scalar_t__ protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int NETIF_F_RXCSUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct iphdr*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	struct net_device *ndev = skb->dev;
	struct iphdr *iph = FUNC1(skb);

	if (!(ndev->features & NETIF_F_RXCSUM))
		return;

	if (skb->protocol != FUNC0(ETH_P_IP))
		return;

	if (FUNC2(iph))
		return;

	if (iph->protocol != IPPROTO_TCP && iph->protocol != IPPROTO_UDP)
		return;

	skb->ip_summed = CHECKSUM_UNNECESSARY;
}