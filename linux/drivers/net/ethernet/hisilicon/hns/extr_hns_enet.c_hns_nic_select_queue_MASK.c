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
struct net_device {int dummy; } ;
struct hns_nic_priv {int /*<<< orphan*/  enet_ver; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct hns_nic_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static u16
FUNC4(struct net_device *ndev, struct sk_buff *skb,
		     struct net_device *sb_dev)
{
	struct ethhdr *eth_hdr = (struct ethhdr *)skb->data;
	struct hns_nic_priv *priv = FUNC3(ndev);

	/* fix hardware broadcast/multicast packets queue loopback */
	if (!FUNC0(priv->enet_ver) &&
	    FUNC1(eth_hdr->h_dest))
		return 0;
	else
		return FUNC2(ndev, skb, NULL);
}